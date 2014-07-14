require 'faker'

FactoryGirl.define do
  factory :hotel do |f|
    f.title { Faker::Name.title}
    f.description { Faker::Lorem.paragraph }
    f.photo Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/assets/hotel/hotel-12.jpg')))
    f.price { Faker::Commerce.price }
  end
end
