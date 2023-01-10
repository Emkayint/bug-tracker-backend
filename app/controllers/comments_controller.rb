class CommentsController < ApplicationController

  def index 
    comments = @current_user.comments

    render json: comments, status: :ok
  end

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
