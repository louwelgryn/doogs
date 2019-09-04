class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @project = Project.find(params[:project_id])
    @event.project = @project
    authorize @event
    @event.save

    @volunteers = @project.volunteers

    Participation.create(
      event: @event,
      user: current_user,
      start_time: @event.start_time
    )

    params[:event][:participants].split(',').uniq.each do |participant_id|
      participant = User.find(participant_id)
      Participation.create(
        event: @event,
        user: participant,
        start_time: @event.start_time
      )
    end

    redirect_to project_dashboard_path(@project, anchor: 'calendar')
  end

  private

  def event_params
    params.require(:event).permit(:project_id, :name, :start_time, :end_time, :status, :description, :hub)
  end
end


