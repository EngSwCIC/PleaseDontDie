#language: pt
@signup
Funcionalidade: Cadastro de usuário

    Um usuário não cadastrado deve se cadastrar para poder conseguir utilizar o conteúdo.

Cenário: Cadastrar usuário
        Dado que está na home page
        Quando cliclar em signup
        E preencher todos os dados
        Então é possível fazer login
