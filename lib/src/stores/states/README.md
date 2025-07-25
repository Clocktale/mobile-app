## States

Os States (estados) representam estados de dados de uma Store. Através deles fica mais nítido e fácil de manipular os diferentes estados que o dado pode ter, como erro, carregamento, sucesso, e vários outros.

- Cada state deve constar por: sealed class abstrata e implementações dessa sealed class. [Isso é importante para termos ajuda do linter do Dart quando usando elas no código e para manter estrutura].

- Estado não contém regra de negócio, mas pode conter utilitários simples, como métodos toJson, fromJson e copyWith.

- Todo estado de erro deve obrigatoriamente ter uma Failure, representando a falha que ocorreu.