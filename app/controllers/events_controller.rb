class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @project = Project.find(params[:project_id])
    @event.project = @project
    @event.save
    authorize @event

    @volunteers = @project.volunteers

    params[:event][:participants].split(',').uniq.each do |participant_id|
      participant = User.find(participant_id)
      Participation.create(
        event: @event,
        user: participant,
        start_time: @event.start_time
      )
    end

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


