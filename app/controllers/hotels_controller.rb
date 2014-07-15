class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :update]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @hotels = Hotel.all
  end

  def show
    @comments = @hotel.comments.all
    @comment = @hotel.comments.build
    @rating = Rating.new(user: current_user, hotel: @hotel, comment: @comment, score: 5)
  end

  def new
    @hotel = Hotel.new
    @hotel.adress ||= Adress.new
  end

  def create
    @hotel = Hotel.new(hotel_params)

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to @hotel, notice: 'Hotel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hotel }
      else
        format.html { render :new }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @hotel.update(hotel_params)
        format.html { redirect_to @hotel, notice: 'Hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotel }
      end
    end
  end


  private

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotel_params
    params.require(:hotel).permit(:title, :description, :photo, :price, :rating, :breakfast, adress_attributes: [:country, :state, :city, :street, :hotel_id])
  end
end
