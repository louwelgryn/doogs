class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
  end

  private

  def event_params
    params.require(:event).permit(:project_id, :name, :date, :status, :description, :hub)
  end
end

