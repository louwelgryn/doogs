class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.project = Project.find(params[:project_id])
    @event.save
    redirect_to projects_dashboard_path(project)
  end

  private

  def event_params
    params.require(:event).permit(:project_id, :name, :start_time, :end_time, :status, :description, :hub)
  end
end

