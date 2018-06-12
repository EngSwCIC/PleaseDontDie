#language: pt
@lgroup
Funcionalidade: Lista do Grupo

    Como usuário, quero ver todos as pessoas que estão relacionadas a um grupo para que tenha uma 
    visão de todos que podem cuidar dos pets.

Cenário: Ver todos os usuários de um grupo
        Dado que sou um usuário logado
        E que possuo um grupo
        Quando vou para a minha página do grupo
        Então é mostrado que possuo esse grupo


