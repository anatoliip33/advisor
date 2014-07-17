class Rating < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :user
  belongs_to :comment
  after_save :average_score

  def average_score
    hotel.update({rating: Rating.where(hotel: hotel).average(:score)})
  end

end
