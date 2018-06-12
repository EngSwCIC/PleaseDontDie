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

  factory :random_user do
    email { Faker::Internet.safe_email }
    password 'senha1234'
  end

  factory :random_puser do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    association :user, factory: :random_user
  end

end
