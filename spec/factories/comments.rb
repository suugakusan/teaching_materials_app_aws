FactoryBot.define do
  factory :comment do
    comment_content { Faker::Lorem.paragraph }
    post
    user
  end
end