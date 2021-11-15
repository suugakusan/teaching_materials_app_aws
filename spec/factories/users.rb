FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
    password { Faker::Internet.password(min_length: 4, max_length: 8)}
  end

  trait :invalid do
    email { nil }
  end
end
