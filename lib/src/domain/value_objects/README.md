## Value Objects

Value Objects serão classes simples que representam algum dado melhor do que um tipo primitivo.

Exemplos:

- ID
- Email
- StarRate

Eles são interessantes para colocarmos algumas lógicas específicas dentro desses value objects, como:

- ID não pode ser menor que 0.
- Contas matemáticas não podem ser feitas com ID.
- função de validação de e-mail que retorna um bool.
- função de formatação de StarRate.