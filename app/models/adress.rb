class Adress < ActiveRecord::Base
  validates :country, :state, :city, :street, presence: :true
  belongs_to :hotel

end
