#language: pt
@group_crud

Funcionalidade: Criar, deletar e editar um grupo

    Como usuário quero criar um grupo, além de modificar seu nome e deletá-lo.

Cenário: Adicionar um grupo
    Dado que sou um usuário logado
    E vou para a minha página de adicionar grupos
    E preencho "group_name" com "MeuGrupo"
    Quando clico em "Salvar"
    Então sou redirecionado para "MeuGrupo"
        
Cenário: Adicionar um grupo com nome inválido
    Dado que sou um usuário logado
    E vou para a minha página de adicionar grupos
    E preencho "group_name" com "1"
    Quando clico em "Salvar"
    Então sou avisado que "é muito curto"

Cenário: Deletar um grupo
    Dado que sou um usuário logado
    E que possuo um grupo chamado "MeuGrupo"
    E vou para a minha página do grupo
    Quando clico em "apagar" de "MeuGrupo"
    Então não há mais "MeuGrupo" 


