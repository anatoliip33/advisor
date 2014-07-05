class Hotel < ActiveRecord::Base
  validates :title, :description, :photo, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 10.01}
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  has_many :comments
  has_many :ratings
  has_one :adress
  accepts_nested_attributes_for :adress

end
