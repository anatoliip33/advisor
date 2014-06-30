class AdressesController < ApplicationController

  def create
    @adress = Adress.new(adress_params)

    respond_to do |format|
      if @adress.save
        format.html { redirect_to @adress }
      end
    end
  end

private

  def adress_params
    params.require(:adress).permit(:country, :state, :city, :street, :hotel_id)
  end

end
