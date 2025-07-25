## Repositories

Aqui é onde ficarão os repositórios.

Os repositórios são os responsáveis por fazer a mediação entre o serviço de obtenção dos dados e as Stores. Os dados provenientes do repositório são considerados como verdadeiros, então não é necessário validação "adicional" em outras camadas.

- Repositórios são separados geralmente por entidade (Contents, Genders, etc.) ou funcionalidade.
- Devem possuir uma abstração (abstract class) e uma implementação.
