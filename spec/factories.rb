FactoryBot.define do
  factory :user do
    email 'test@example.com'
    password 'senha1234'
    after(:build) do |user|
      user.profile_user ||= FactoryBot.build(:profile_user, user: user)
    end
  end

  factory :profile_user do
    first_name 'Tester'
    last_name 'Quake'
    after(:build) do |puser|
      puser.user ||= FactoryBot.build(:user, profile_user: puser)
    end
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

  factory :group do
    name { 
      n = Faker::StarTrek.specie
      n.length < 2 ? (n = Faker::StarTrek.specie) : n
    }
  end

end
