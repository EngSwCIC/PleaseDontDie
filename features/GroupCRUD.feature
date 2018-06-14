#language: pt
@group_crud

Funcionalidade: Criar, deletar e editar um grupo

    Como usuário quero criar um grupo, além de modificar seu nome e deletá-lo.

Cenário: Adicionar um grupo
    Dado que sou um usuário logado
    Quando clico em "Adicionar grupo"
    E preencho "group_name" com "MeuGrupo"
    E clico em "Enviar"
    Então sou redirecionado para "MeuGrupo"
        
Cenário: Adicionar um grupo com nome inválido
    Dado que sou um usuário logado
    Quando clico em "Adicionar grupo"
    E preencho "group_name" com "1"
    E clico em "Enviar"
    Então sou avisado que "é muito curto"


