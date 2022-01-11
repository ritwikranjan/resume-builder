class ProjectController < ApplicationController
  before_action :logged_in_user, only: [:new]
  def new
    @experience = Experience.find(params[:id])
    @experience.projects.create
    redirect_to edit_url
  end
end
