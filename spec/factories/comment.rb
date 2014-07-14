require 'faker'

FactoryGirl.define do
  factory :comment do
    user_name { Faker::Internet.user_name }
    body { Faker::Lorem.paragraph }
  end
end
