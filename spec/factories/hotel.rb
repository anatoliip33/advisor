require 'faker'

FactoryGirl.define do
  factory :hotel do |f|
    f.title { Faker::Name.title }
    f.description { Faker::Lorem.paragraph }
    f.photo Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/assets/hotel/hotel-12.jpg')))
    f.price { Faker::Number.number(3) }

  factory :invalid_hotel do |f|
    f.title nil
  end

  end
end
