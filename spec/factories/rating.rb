require 'faker'

FactoryGirl.define do
  factory :rating do
    score=Random.rand(1..5)
  end
end
