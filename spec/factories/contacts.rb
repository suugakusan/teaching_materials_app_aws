FactoryBot.define do
  factory :contact do
    name { Faker::Lorem.characters(number: 8) }
    email { Faker::Internet.free_email }
    content { Faker::Lorem.characters(number: 2000) }
    remote_ip { "remote_ip" }
  end
end