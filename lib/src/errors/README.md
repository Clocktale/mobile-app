## Errors

A pasta errors conterá todos os tipos de erro customizados que quisermos. O ideal é que cada caso tenha uma Failure referente a ele, como:

- ConnectionFailure
- InvalidEmailFailure
- ActionForbiddenFailure

Veja que todos os erros deverão seguir o seguinte padrão:

- Estender de Failure
- Ter o sufixo Failure