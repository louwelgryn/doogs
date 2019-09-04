class RessourcesController < ApplicationController
  def create
    project = Project.find(params[:project_id])
    ressource = Ressource.new(ressource_params)
    authorize ressource
    ressource.project = project
    ressource.user = current_user
    ressource.save
    redirect_to project_dashboard_path(project, anchor: 'fichiers')
  end

  private

  def ressource_params
    params.require(:ressource).permit(:name, :source)
  end
end
