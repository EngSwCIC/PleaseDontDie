## Como contribuir com o PLZDD

Agradecemos o interesse! Toda ajuda será muito bem vinda :heart: 

Para obter informações sobre o nosso projeto, pode começar pelo [README](README.md), mas não se esqueça de dar uma conferida no nosso [Código de Conduta](CODE_OF_CONDUCT.md).

#### **Encontrou um Bug?**

* **Não abra um GitHub issue se o bug for associado a uma vulnerabilidade**, nessa situação, por favor, nos contacte por email, [team.pleasedontdie@gmail.com].

* **Verifique se o bug já não foi reportado** buscando no GitHub em [Issues](https://github.com/EngSwCIC/PleaseDontDie/issues).

* Se o bug não consta nas Issues, [basta abrir uma nova](https://github.com/EngSwCIC/PleaseDontDie/issues/new).Verifique se a Issue criada possui um **título e uma descrição do problema**, além de incluir uma tag (label) **bug**.

#### **Adicionando ou modificando uma funcionalidade**

* **Verifique se já não existe uma Issue relacionada** buscando no GitHub em [Issues](https://github.com/EngSwCIC/PleaseDontDie/issues).

* Caso não exista, [basta abrir uma nova Issue](https://github.com/EngSwCIC/PleaseDontDie/issues/new).Verifique se a Issue criada possui um **título e uma descrição do problema**.

* As mudanças devem ser submetidas para revisão por meio de [Pull Requests](https://github.com/EngSwCIC/PleaseDontDie/compare/dev...feature/home).

#### **Padrão de Commits**

* Os commits devem estar todos em **inglês**.

* Devem contar um título claro, seguido de uma descrição mais detalhada.

* Os commits podem possuir co-autores cajo tenham sido realizados em grupo.

__Exemplo:__

  Adds profile page
  
  Co-authored-by: Fulano de Tal <fulano@gmail.com> 

#### Nomenclatura dos Ramos

Nesse projeto há dois ramos principais: `master` e o `dev`. No ramo `master` estão apenas 
códigos testados, em sua versão mais estável. Já o ramo `dev` é para a versão estável, no 
entanto ainda em fase de correções de bugs e recebimento de novas funcionalidades.

Para a nomenclatura dos ramos subsequentes, 
será usado [esse padrão](https://github.com/chrisjlee/git-style-guide). Desse modo, como 
recomendado, os ramos serão agrupados de acordo com tokens curtos, como na tabela.

| Prefixo | Uso |
| --- | --- |
| **feature** | Adicionar ou expandir uma feature |
| **bug** | Arrumar bugs |
| **trash** | Código para experimentação |

Como delimitador de ramos, será utilizada a barra '/'.


### Arquitetura

A aplicação segue o padrão arquitetural MVC e em acordo com as convenções da comudade do framework Rails. Desse modo, há uma divisão em três componentes principais, o Model, o View e o Controller, como ilustrado em pela figura abaixo.
![MVC](https://adrianmejia.com/images/rails_arch.png)

### Regras de Negócio (Constraints)

O PLZDD está centrado no cuidado de dependentes. Assim, há a questão de privacidade. Para isso, a aplicação está centrada em entidades básicas, sendo elas:

* Usuário
* Pet
* Espécies
* Cuidados
* Grupos

Para que usuários possam compartilhar tarefas, eles são então integrados em um grupo. Cada grupo pode possuir diferentes Pets. Esses pets, então, pertecem a uma espécie, cada qual com um tipo de cuidado diferenciado. 




Agradecemos! :heart: :heart: :heart:
Equipe PLZDD
