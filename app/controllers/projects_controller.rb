class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @project = Project.find(params[:id])
    authorize @project
  end

  def index
    @projects = policy_scope(Project)
  end

  def dashboard
    @project = Project.find(params[:id])
    authorize @project
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :development_goal, :status, :start_date, :end_date, :image)
  end
end
