## Entidades

As entidades são o core da aplicação, elas representam os dados que nós queremos.

Exemplos de entidades que existirão:

- Content
- IncludeRequest
- ContentGender

As entidades deverão ser imutáveis, isto é, os atributos da instância não mudarão em runtime.

Todas elas deverão:

- Estender de Equatable (vai nos ajudar a comparar uma com a outra)
- Ter um método copyWith (cria uma cópia da entidade com atributos específicos diferentes)
- Ter todos os campos como final
- Ter construtor constante
- Não depender de pacote externo além de Equatable