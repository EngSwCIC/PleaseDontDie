FactoryBot.define do
  factory :user do
    email 'test@example.com'
    password 'senha1234'
  end

  factory :profile_user do
    first_name 'Tester'
    last_name 'Quake'
    user
  end
end
