#language: pt
@group @pet
Funcionalidade: Adicionar um Pet

  Eu como usuário quero adicionar um novo pet a um grupo.

Cenário: Adicionar um pet ao grupo
        Dado que me encontro na página do grupo
        Quando clico em "Novo Pet"
        Então devo ir para a página de Novo Pet
