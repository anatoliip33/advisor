class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.hotel }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @comment.hotel }
    end
  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:user_name, :body, :hotel_id, rating_attributes: [:score, :comment_id, :user_id, :hotel_id])
    end
end
