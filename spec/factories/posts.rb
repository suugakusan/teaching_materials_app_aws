FactoryBot.define do
  factory :post do
    title { Faker::Lorem.word }
    content { Faker::Lorem.paragraph }
    user
    file { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/国語のプリント.pdf')) }
    subject_id { rand(13)}
  end
end
