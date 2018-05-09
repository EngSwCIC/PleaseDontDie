#language: pt
@group
Funcionalidade: Lista do Grupo

    Como usuário, quero ver todos as pessoas que estão relacionadas a um grupo para que tenha uma 
    visão de todos que podem cuidar dos pets.

Cenário: Ver todos os usuários de um grupo
        Dado que usuário está logado
        Quando cliclar em Grupo
        Então mostra todos os usuários desse grupo


