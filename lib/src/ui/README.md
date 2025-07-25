## UI

Aqui teremos todas as páginas e componentes da aplicação. Esses componentes são dividos por funcionalidade / entidade.

Cada funcionalidade/entidade terá a mesma estrutura:

- atoms
- molecules
- organisms
- templates (opcional)
- pages

### Atoms
Atoms são componentes muito simples, como um botão, uma label, um input de texto.

### Molecules
Molecules são componentes que são feitos a partir de atoms, representando estruturas simples, geralmente sem funcionalidade. Um grupo de input + label seria um exemplo, uma junção de imagem + texto + botão.

### Organisms
Organisms são componentes que funcionam juntos como unidade. Esses tendem a apresentar funcionalidade sozinhos. A exemplo temos: AppBar, NavigationBar, Drawer, formulário.

### Templates
Templates são o layout da sua página para um contexto. Por exemplo: Template quando for erro, Template quando for sucesso, etc. Geralmente é composto por organismos + molecules + atoms.

### Pages
Páginas representam páginas completas. Uma página idealmente é quem se preocupará com o estado e alternará entre os templates dependendo do estado.

Para mais detalhes, veja o link https://atomicdesign.bradfrost.com/chapter-2. (Vai aprender inglês preguiçoso)