FactoryBot.define do
  factory :post do
    title { Faker::Lorem.word }
    content { Faker::Lorem.paragraph }
    user
    file { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/国語のプリント.pdf')) }
    subject_id { "国語" }
  end

  trait :invalids do
    title { "a" * 21 }
  end
  
  trait :title_invalids do
    title { nil }
  end
end
