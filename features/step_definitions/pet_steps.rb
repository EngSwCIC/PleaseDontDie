Dado(/^que eu já estou cadastrado$/) do
  Factory.create(:minimal_user)
end

E(/^que possuo um grupo$/) do
  Factory.create(:basic_group)
end

Dado(/^que me encontro na página do grupo$/) do
  visit '#/groups/1'
end

Quando(/^clico em "[(^")*]"$/) do |button|
  click_on(button)
end

Então(/^devo ir para a página de Novo Pet$/) do
  visit new_group_pet_path
end

E(/^preencho com os seguintes dados:$/) do
  fields.rowa_hash.each do |name, value|
    step %{preencho "#{name}" com "#{value}"}
  end
end
