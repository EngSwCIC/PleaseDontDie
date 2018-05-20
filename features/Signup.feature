#language: pt
@signup
Funcionalidade: Cadastro de usuário

    Um usuário não cadastrado deve se cadastrar para poder conseguir utilizar o conteúdo.

Cenário: Cadastrar usuário
        Dado que estou na home page
        Quando cliclo em "Sign up"
        E preencho com os seguintes dados:
            | Email address         | teste@teste.com |
            | Password              | senha1234       |
            | Password confirmation | senha1234       | 
        Então é possível fazer login com os dados:
            | Email address         | teste@teste.com |
            | Password              | senha1234       |
