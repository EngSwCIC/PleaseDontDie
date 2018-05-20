Dado(/que estou na (.+)$/) do |page|
  visit path_to(page)
end

Quando(/cliclo em "([^"]*)"$/) do |button|
  click_link(button)
end

Quando(/preencho "([^"]*)" com "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

Quando(/preencho com os seguintes dados:$/) do |fields|
  fields.rows_hash.each do |name, value|
    step %{preencho "#{name}" com "#{value}"}
  end
end

Então(/é possível fazer login com os dados:$/) do |fields| 
  click_link("Log in")
  fields.rows_hash.each do |name, value|
    step %{preencho "#{name}" com "#{value}"}
  end
end
