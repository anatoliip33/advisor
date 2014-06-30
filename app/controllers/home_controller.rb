class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @hotels = Hotel.order('rating DESC').limit(5).includes(:comments)
  end
end
