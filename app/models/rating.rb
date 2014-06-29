class Rating < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :user
  after_save :update

  def update
    hotel.update({rating: Rating.where(hotel: hotel).avg(:score)})
  end

end
