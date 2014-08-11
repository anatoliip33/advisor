class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.hotel }
      else
        format.html { redirect_to @comment.hotel }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:user_name, :body, :hotel_id, :user_id, rating_attributes: [:score, :comment_id, :user_id, :hotel_id]).merge(user: current_user)
    end
end
