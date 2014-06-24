class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @hotels = Hotel.order('created_at DESC').limit(3).includes(:comments)
    @comments = Comment.all
  end
end
