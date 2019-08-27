class ProjectsController < ApplicationController
  def index
    @projects = policy_scope(Project)
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :development_goal, :status, :start_date, :end_date, :image)
  end
end
