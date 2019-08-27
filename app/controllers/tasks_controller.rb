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
      redirect_to projects_path
    else
      render :new
    end
  end

  private

  def project_volunteers
    @project.commitments.map do |commitment|
      commitment.user
    end
  end

  def tasks_params
    params.require(:task).permit(:name, :description, :priority_level, :user_id)
  end
end
