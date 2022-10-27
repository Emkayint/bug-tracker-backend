class ProjectsController < ApplicationController

  def index
    render json: @current_user.organizations.projects, status: :ok
  end
end
