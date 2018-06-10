Dado(/^que estou logado e me encontro na home page$/) do
  email = 'luisa@mail.com'
  password = '123456'
  visit '/'
end

Quando(/^clico em "([^"]*)"$/) do |button|
  click_link(button)
end

Então(/^devo ir para a página de perfil de usuário$/) do
  visit '#/user/1'
end
