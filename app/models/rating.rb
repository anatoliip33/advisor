class Rating < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :user
  belongs_to :comment
  after_save :update

  def update
    hotel.update({rating: Rating.where(hotel: hotel).average(:score)})
  end

end
