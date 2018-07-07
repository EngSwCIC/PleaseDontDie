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
      n = Faker::GameOfThrones.house
      n.length < 2 ? (n = Faker::GameOfThrones.house) : n
    }
  end

  factory :specie do
    name { Faker::Pokemon.name }
  end

  factory :pet do
    name { Faker::Dog.name }
    birthday { Faker::Date.birthday(0, 30) }
    sex { ["macho", "fêmea"].sample }
    specie
    group
  end

  factory :duty do
    name { Faker::Name.quote }
    importance { rand(5) }
    frequency { rand(5) }
    pet
    done false
  end

end
