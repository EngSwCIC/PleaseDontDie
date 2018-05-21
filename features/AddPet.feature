#language: pt
@pet
Funcionalidade: Adicionar um Pet

  Eu como usuário quero adicionar um novo pet a um grupo.

Cenário: Adicionar um pet ao grupo
        Dado que me encontro na group page
        Quando clico em New Pet
        E preencho os campos:
          | Name            | Mister           |
          | Bio             | Gatinho fofo     |
          | Birthday        | 14-04-2013       |
          | Sex             | Male             |
        Então aparece na tela que o pet foi criado com sucesso.
