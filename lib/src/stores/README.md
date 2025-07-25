## Stores

Stores são as responsáveis pelo gerenciamento de estado das views. Geralmente cada view terá sua store, mas nem sempre.
Todas as ações e lógicas devem ser colocadas nas Stores, as views não devem ter nenhuma noção de regra de negócio, focando apenas em como mostrar os dados.

- Cada store pode ter uma classe de estado (que ficará em states). Essas classes de estado serão úteis para a view renderizar facilmente conforme o estado do dado (erro, carregamento, sucesso, início, ...).

- A store se comunica com uma abstração de repositório / caso de uso. Ela não sabe a real implementação que existe ali e nem de onde vêm, apenas usa-o.

- As stores para esse projeto usarão ValueListenables. Eles serão os responsáveis para que tenhamos a reatividade no app.

- Toda store precisa ser projetada para esperar que erros ocorram e notificar a view que um erro ocorreu quando for o caso.