class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.project = Project.find(params[:project_id])
    @event.save
    authorize @event

    @project = Project.find(params[:project_id])
    @volunteers = @project.volunteers

    url = 'http://localhost:3000/projects/' + @project.id.to_s + '/dashboard#calendar/'

    redirect_to url

    # redirect_to project_dashboard_path(@event.project)
    # respond_to do |format|
    #   format.html { render 'projects/show' }
    #   format.js # <-- will render `app/views/events/create.js.erb`
    # end
  end

  private

  def event_params
    params.require(:event).permit(:project_id, :name, :start_time, :end_time, :status, :description, :hub)
  end
end


