#language: pt
@addtogroup
Funcionalidade: Adiciona Usuário ao Grupo

    Como usuário, quero adicionar usuários a meu grupo.

Cenário: Tentar adicionar usuário não existente ao grupo (sad path)
        Dado que sou um usuário logado
        E que possuo um grupo
		E vou para a página de um dos meus grupos
        Quando preencho "email" com: "invalid@email.com"
        E clico em "Adicionar"
        Então é mostrado que o usuário não foi encontrado

Cenário: Tentar adicionar usuário existente ao grupo (happy path)
        Dado que sou um usuário logado
        E que possuo um grupo
        Dado que o usuário "test@email.com" existe
		E vou para a página de um dos meus grupos
        Quando preencho "email" com: "test@email.com"
        E clico em "Adicionar"
        Então é mostrado que "test@email.com" foi adicionado com sucesso

