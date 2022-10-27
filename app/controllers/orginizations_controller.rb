class OrganizationsController < ApplicationController


  def create
    org = Organization.create(:name)
  end


  private
  def permit_org
    params.permit(:name, :description, :country)
  end
end
