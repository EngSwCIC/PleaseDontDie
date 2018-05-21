#language: pt
@perfil
Funcionalidade: Perfil de usuário

    Como um usuário, após me cadastrar ou fazer login, quero ver uma tela com meus dados

Cenário: Exibir perfil do usuário após login
    Dado que acabei de fazer login
    Então é exibida uma tela com meus dados

Cenário: Exibir perfil do usuário após cadastro
    Dado que acabei de me cadastrar
    Então é exibida uma tela com meus dados

Cenário: Exibir perfil do usuário após clicar no email
    Quando clico no meu email
    Então é exibida uma tela com meus dados