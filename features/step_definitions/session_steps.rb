Dado("e o seguinte usuário está cadastrado:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  User.create!(table.rows_hash)
end

Então("aparece uma aviso que o login foi completado") do
  if page.respond_to? :should 
    page.should have_content("Log in realizado!")
  end
end

