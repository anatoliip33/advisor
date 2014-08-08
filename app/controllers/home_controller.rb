class HomeController < ApplicationController
  def index
    @hotels = Hotel.order('rating DESC').limit(5).includes(:comments)
  end
end
