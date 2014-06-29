class Comment < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :user
  has_one :rating, dependent: :destroy
  accepts_nested_attributes_for :rating
end
