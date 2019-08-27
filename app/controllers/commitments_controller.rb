class CommitmentsController < ApplicationController

  def update
    @project = Project.find(params[:project_id])
    authorize @project

  end


end
