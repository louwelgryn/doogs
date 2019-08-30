class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @project = Project.find(params[:id])
    authorize @project
    @volunteers = @project.volunteers
  end

  def index
    @statuses = Project::PROJECT_STATUS
    @thematics = Project::DEVELOPMENT_GOAL
    @projects = policy_scope(Project)

    if params["search"] && params["search"]["status"]
      @status = params["search"]["status"]
      case params["search"]["status"]
      when "on going"
        @projects = @projects.where(status: 'on going')
      when "finished"
        @projects = @projects.where(status: 'finished')
      when "pending"
        @projects = @projects.where(status: 'pending')
      end
    end

    if params["search"] && params["search"]["thematics"]
      @thematics = params["search"]["thematics"]
      Project::DEVELOPMENT_GOAL.each do |thematic|
        @projects = @projects.where(development_goal: thematic) if params["search"]["thematics"] == thematic
      end
    end
  end

  def dashboard
    @project = Project.find(params[:id])
    @task = Task.new
    @volunteers = @project.volunteers
    @event = Event.new
    authorize @project
    @manager = manager?
    gon.events = EventsParsingService.parse_events(@project)
  end

  def search
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

  def project_params
    params.require(:project).permit(:name, :description, :development_goal, :status, :start_date, :end_date, :image)
  end
end
