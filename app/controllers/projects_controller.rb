class ProjectsController < ApplicationController

  def index
    render json: @current_user.organization.projects, status: :ok
  end

  def show
    project = Project.find_by_id(params[:id])
    render json: project , status: :ok
  end
end
