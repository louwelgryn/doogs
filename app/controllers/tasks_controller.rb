class TasksController < ApplicationController

  def new
    @task = Task.new
    @project = Project.find(params[:project_id])
    authorize @task
    @volunteers = project_volunteers
  end

  def create
    @task = Task.new(tasks_params)
    @project = Project.find(params[:project_id])
    @task.project = @project
    authorize @task
    if @task.save
      redirect_to project_dashboard_path(@project)
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id])
    @task.status = "Achevée"
    authorize @task
    @task.save
    flash[:notice] = "La tâche est désormais achevée"
  end

  private

  def manager?
    current_user.commitments.find_by(project_id: @project.id).skill.name == "Product manager"
  end

  def project_volunteers
    @project.commitments.map do |commitment|
      commitment.user
    end
  end

  def tasks_params
    params.require(:task).permit(:name, :description, :priority_level, :user_id)
  end
end
