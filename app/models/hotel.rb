class Hotel < ActiveRecord::Base
  validates :title, :description, :photo, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 10.01}
  validates :photo, allow_blank: true, format: {
                              with: %r{\.(gif|jpg|png)\Z}i,
                              message: 'must be a URL for GIF, JPG or PNG image.'
}
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  has_many :comments
  has_many :ratings
  has_one :adress
  accepts_nested_attributes_for :adress

end
