Dado(/^que me encontro na group page$/) do
  visit 'groups#show'
end

Quando(/^clico em New Pet$/) do
  click_link('new-pet')
end

E(/^preencho os campos:$/) do
  fill_in 'Name', with: 'Mister'
  fill_in 'Bio', with: 'Gatinho fofo'
  fill_in 'Birthday', with: '14-04-2013'
  fill_in 'Sex', with: 'Male'
  click_button 'Criar Pet'
end

Então(/^aparece na tela que o pet foi criado com sucesso.$/) do
  if page.respond_to? :should
    page.should have_content(/^Pet was successfully created.$/)
  end
end
