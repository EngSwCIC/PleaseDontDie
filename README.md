# Please Dont Die

<a href="https://zenhub.com"><img src="https://raw.githubusercontent.com/ZenHubIO/support/master/zenhub-badge.png"></a>

Ferramenta para facilitar o gerenciamento de atividades de cuidado relacionado a cães, gatos, pássaros e plantas.

## Documentação

A documentação e artefatos produzidos pode ser encontrada em https://engswcic.github.io/PleaseDontDie/

## Built With

* [Rails](https://github.com/rails/rails) - Web framework
* [Devise](https://github.com/plataformatec/devise) - Auth
* [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) - Images

## Contribuindo

Por favor leia o [arquivo de contribuição](CONTRIBUTING.md) para mais detalhes de como você pode nos ajudar.

## Rodando a aplicação

Os passos a seguir se referem a execução local do servidor em Ubuntu 16.04. Para isso, são requisitos:
* Git
* Ruby
* Rails

```bash
git clone https://github.com/EngSwCIC/PleaseDontDie.git
cd PleaseDontDie
bin/bundle install
bin/rake db:create
bin/rake db:migrate
bin/rake db:seed
bin/rails s
```

Após esses passos, o servidor Rails deve estar rodando. Mantendo o servido ativo, então acessar a página (local pela porta 3000)[http://localhost:3000].


## Licença

Esse projeto está sob licença MIT - veja [LICENSE.md](LICENSE.md) para mais detalhes


