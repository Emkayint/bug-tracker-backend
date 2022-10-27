class CommentsController < ApplicationController

  def show
    comment = Comment.find_by_id(params[:id])
    render json: comment, status: :ok
  end

  def create
    comment = Comment.create(message: params[:message], user_id: @current_user.id, issue_id: params[issue_id])
    render json: comment, status: :created
  end

  private
 
end
