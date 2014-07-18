class Hotel < ActiveRecord::Base
  validates :title, :description, :photo, :price, presence: true
  validates :title, :description, uniqueness: true
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
