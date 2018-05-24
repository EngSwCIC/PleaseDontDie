#language: pt
@group_crud

Funcionalidade: Criar, deletar e editar um grupo

    Como usuário quero criar um grupo, além de modificar seu nome e deletá-lo.

Cenário: Adicionar um grupo
    Dado que o seguinte usuário está cadastrado:
      | email                 | teste@teste.com |
      | password              | senha1234       |
      | password_confirmation | senha1234       |
    E está na sua página de perfil
    Quando clica em "Add Group"
    E preencho com os seguintes dados:
      | nome  | Meu Grupo |
    Então recebo aviso que o grupo foi criado
        


