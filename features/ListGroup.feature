#language: pt
@lgroup
Funcionalidade: Lista do Grupo

    Como usuário, quero ver todos as pessoas que estão relacionadas a um grupo para que tenha uma 
    visão de todos que podem cuidar dos pets.

Cenário: Ver que faço parte  de um grupo
        Dado que sou um usuário logado
        E que possuo um grupo
        Quando vou para a minha página do grupo
        Então é mostrado que possuo esse grupo

Cenário: Ver todos os usuários de um grupo
        Dado que sou um usuário logado
        E que possuo um grupo chamado "MeuGrupo"
        Dado que os seguintes usuários existem e fazem parte do grupo:
        | email            |
        | jack@email.com   |
        | sally@email.com  |
        | alfred@email.com |
        Quando vou para a minha página do grupo
        Então é mostrado "sally@email.com0"


