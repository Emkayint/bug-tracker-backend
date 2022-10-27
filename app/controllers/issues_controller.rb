class IssuesController < ApplicationController


  def create
  end

  def show
    issue = Issue.find_by_id(params[:id])
    render json: issue, status: :ok
  end
end
