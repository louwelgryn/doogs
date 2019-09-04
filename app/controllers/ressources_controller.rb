class RessourcesController < ApplicationController
  skip_after_action :verify_policy_scoped

  def create
    project = Project.find(params[:project_id])
    ressource = Ressource.new(ressource_params)
    authorize ressource
    ressource.project = project
    ressource.user = current_user
    ressource.save
    redirect_to project_dashboard_path(project, anchor: 'fichiers')
  end

  def index
    @project = Project.find(params[:project_id])
    @ressources = @project.ressources.where(content_type: params[:search][:content_type])
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def ressource_params
    params.require(:ressource).permit(:name, :source)
  end
end
