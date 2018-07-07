Dado /^estou na (.+)$/ do
  visit '#/species/1'
  expect(page.status_code).to eq(200)
end