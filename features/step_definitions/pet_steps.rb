Dado(/^que me encontro na página do grupo$/) do
  email = 'luisa@mail.com'
  password = '123456'
  visit '#/groups/1'
end

Quando(/^clico em "[(^")*]"$/) do |button|
  click_link(button)
end

Então(/^devo ir para a página de Novo Pet$/) do
  visit new_group_pet_path
end
