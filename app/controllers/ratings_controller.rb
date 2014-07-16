class RatingsController < ApplicationController

  def create
    @rating = Rating.new(rating_params)

    respond_to do |format|
      if @rating.save
        format.html { redirect_to :back, notice: 'Rating was successfully created.' }
      end
    end
  end


private

  def rating_params
    params.require(:rating).permit(:score, :hotel_id, :comment_id).merge(user: current_user)
  end

end
