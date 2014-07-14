require 'faker'

FactoryGirl.define do
  factory :adress do
    country { Faker::Address.country }
    state { Faker::Address.state }
    city { Faker::Address.city }
    street { Faker::Address.street_address }
  end
end
