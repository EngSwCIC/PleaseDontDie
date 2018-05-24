#language: pt
@group
Funcionalidade: Lista do Grupo

    Como usuário, quero ver todos as pessoas que estão relacionadas a um grupo para que tenha uma 
    visão de todos que podem cuidar dos pets.

Cenário: Ver todos os usuários de um grupo
        Dado que estou logado
        Quando cliclo em Grupo
        Então são mostrado todos os usuários desse grupo


