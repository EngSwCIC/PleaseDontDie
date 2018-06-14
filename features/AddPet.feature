#language: pt
@group @pet
Funcionalidade: Adicionar um Pet

  Eu como usuário quero adicionar um novo pet a um grupo.

Contexto:
        Dado que eu já estou cadastrado
        E que possuo um grupo

Cenário: Adicionar um pet ao grupo
        Dado que me encontro na página do grupo
        Quando clico em "Novo Pet"
        Então devo ir para a página de Novo Pet
        E preencho com os seguintes dados:
          | name      | Mr. Mister |
          | bio       | Um gatinho |
          | birthday  | 14-08-1995 |
          | sex       | macho      |
          | specie    | gato       |
        Então devo ser avisado que o pet foi criado
