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
      redirect_to project_dashboard_path(@project, anchor: 'roadmap')
    else
      render :new
    end
  end

  def status_update
    @task = Task.find(params[:id])
    authorize @task
    @priority_level = params[:priority_level]
    @task.priority_level = @priority_level
    @task.save
  end

  def update
    @task = Task.find(params[:id])
    @project = Project.find(params[:project_id])
    @task.status = "Achevée"
    authorize @task
    @task.save
    redirect_to project_dashboard_path(@project)
    flash[:notice] = "La tâche est désormais achevée"
  end

  private

  def project_volunteers
    @project.commitments.map do |commitment|
      commitment.user
    end
  end

  def tasks_params
    params.require(:task).permit(:name, :description, :priority_level, :user_id, :end_date)
  end
end
