class Comment < ActiveRecord::Base
  validates :user_name, :body, presence: true, uniqueness: true
  belongs_to :hotel
  belongs_to :user
  has_one :rating, dependent: :destroy
  accepts_nested_attributes_for :rating
end
