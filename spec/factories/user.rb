require 'faker'

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.free_email }
    password { Faker::Internet.password }
    current_sign_in_ip { Faker::Internet.ip_v4_address }
  end
end
