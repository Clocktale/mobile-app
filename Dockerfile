# Usa Ubuntu 24.04 como base
FROM ubuntu:24.04

# Variáveis ambiente Android SDK
ENV ANDROID_SDK_ROOT=/usr/lib/android-sdk
ENV ANDROID_HOME=/usr/lib/android-sdk

ENV PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

# Instala dependências essenciais + Dart SDK
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    openjdk-21-jdk \
    libc6-i386 \
    libncurses6 \
    libstdc++6 \
    lib32z1 \
    libbz2-1.0 \
    build-essential \
    bash-completion \
    wget \
    xz-utils \
    apt-transport-https \
    gnupg && \
    wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor > /usr/share/keyrings/dart.gpg && \
    sh -c 'echo "deb [signed-by=/usr/share/keyrings/dart.gpg] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main" > /etc/apt/sources.list.d/dart_stable.list' && \
    apt-get update && apt-get install -y dart && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get clean

# Cria diretório Android SDK e baixa command-line tools
RUN mkdir -p /usr/lib/android-sdk/cmdline-tools && \
    curl -o /tmp/sdk-tools.zip https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip && \
    unzip -q /tmp/sdk-tools.zip -d /usr/lib/android-sdk/cmdline-tools && \
    mv /usr/lib/android-sdk/cmdline-tools/cmdline-tools /usr/lib/android-sdk/cmdline-tools/latest && \
    rm /tmp/sdk-tools.zip

# Aceita licenças
RUN yes | sdkmanager --licenses

# Instala plataformas, build-tools e platform-tools
RUN sdkmanager "platform-tools" "platforms;android-35" "build-tools;35.0.0"

# Cria usuário flutteruser sem senha
RUN adduser --disabled-password --gecos "" flutteruser

# Cria diretório /app e ajusta permissões
RUN mkdir /app && chown -R flutteruser:flutteruser /app

# Troca para flutteruser
USER flutteruser
ENV HOME=/home/flutteruser
WORKDIR /app

# Instala FVM via Dart Pub Global (mais limpo que o script nesse contexto)
RUN dart pub global activate fvm 

# Ajusta PATH para incluir pub global bin
ENV PATH=$PATH:$HOME/.pub-cache/bin

RUN fvm install 3.32.7 && fvm global 3.32.7
