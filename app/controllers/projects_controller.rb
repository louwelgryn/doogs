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

    @charities = @projects.map { |p| p.charity }

    @markers = @projects.map do |project|
      {
        lat: project.charity.latitude,
        lng: project.charity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { project: project }),
        image_url: helpers.asset_url('maps-and-flags.png')
      }
    end

    # @markers = @charities.map do |charity|
    #   {
    #     lat: charity.latitude,
    #     lng: charity.longitude,
    #     infoWindow: render_to_string(partial: "info_window", locals: { project: @project }),
    #     image_url: helpers.asset_url('maps-and-flags.png')
    #   }
    # end
  end

  def dashboard
    @project = Project.find(params[:id])
    @events = @project.events.joins(:participations).where('user_id = ?', current_user.id)
    @task = Task.new
    @volunteers = @project.volunteers
    @event = Event.new

    @taches_a_faire = @project.tasks.where('status = ?', 'A faire');
    @taches_faites = @project.tasks.where('status = ?', 'Achevée');
    @chat_room = @project.chat_room
    @user_participations = ["lalala"]
    authorize @project
    @manager = manager?
    gon.events = EventsParsingService.parse_events(@events)

    @next_participation = @project.participations.where('user_id = ?', current_user.id).order(:start_time).first

    if @next_participation.nil?
    else
      @next_participation_month = Project::CORRESPONDANCE_MOIS_CHIFFRE[@next_participation.start_time.month]
    end
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
    params.require(:project).permit(:name, :description, :development_goal, :status, :start_date, :end_date, :image, :chat_room, :ressource_data => [])
  end
end
