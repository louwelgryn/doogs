class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @project = Project.find(params[:id])
    authorize @project
    @volunteers = @project.volunteers
    @charity = @project.charity
  end

  def index
    @statuses = Project::PROJECT_STATUS
    @thematics = Project::DEVELOPMENT_GOAL
    @projects = policy_scope(Project)

    if params["search"] && params["search"]["status"]
      @status = params["search"]["status"]
      case params["search"]["status"]
      when "En cours"
        @projects = @projects.where(status: 'En cours')
      when "Terminé"
        @projects = @projects.where(status: 'Terminé')
      when "En attente"
        @projects = @projects.where(status: 'En attente')
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

    @chat_room = @project.chat_room
    @user_participations = ["lalala"]
    authorize @project

    @manager = manager?
    gon.events = EventsParsingService.parse_events(@project)

    @next_participation = @project.participations.where('user_id = ?', current_user.id).order(:start_time).first
    @next_participation_month = Project::CORRESPONDANCE_MOIS_CHIFFRE[@next_participation.start_time.month]
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
    params.require(:project).permit(:name, :description, :development_goal, :status, :start_date, :end_date, :image, :chat_room)
  end
end
