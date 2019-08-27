class ProjectsController < ApplicationController
  def show
    @project = project.find(params[:id])
  end
end
