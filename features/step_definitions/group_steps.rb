Dado("que sou um usuário logado") do
  login
end

Dado(/que o usuário "([^"]*)" existe/) do |email|
  password = "senha1234"
  user = User.new(email: email, password: password)
  user.save!
  puser = ProfileUser.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user: user)
  puser.save!
end

E("que possuo um grupo") do
  @group = Group.create!(name: Faker::GameOfThrones.house)
  @group.profile_users << current_user.profile_user
end

Quando(/vou para (.+)/) do |page_name|
  visit path_to(page_name)
end

Então("é mostrado que possuo esse grupo") do
  expect(page).to have_content(@group.name)
end

Quando(/^preencho "([^"]*)" com: "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

Então("é mostrado que o usuário não foi encontrado") do
  expect(page).not_to have_content("invalid@email.com")
end

Então(/é mostrado que "([^"]*)" foi adicionado com sucesso/) do |email|
  expect(page).to have_content(email)
end

Então(/sou redirecionado para "([^"]*)"/) do |group_name|
  expect(page).to have_content(group_name)
end

Então(/sou avisado que "([^"]*)"/) do |warning|
  expect(page).to have_content(warning)
end




