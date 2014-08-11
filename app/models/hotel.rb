class Hotel < ActiveRecord::Base
  is_impressionable :column_name => :review, :unique => :request_hash, :counter_cache => true
  enum status: [:pending, :approved, :rejected]
  validate :status_workflow, if: :status_changed?
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
  after_update :send_status

  def status_workflow
    errors.add(:status, 'must be pending before approved') if status == 'approved' && status_was != 'pending'
    errors.add(:status, 'must be pending before rejected') if status == 'rejected' && status_was != 'pending'
  end

  def send_status
    if status_changed?
      StatusNotifier.send_mail(self).deliver
    end
  end

end
