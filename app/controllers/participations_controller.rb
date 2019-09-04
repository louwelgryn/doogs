class ParticipationsController < ApplicationController
  def create
    @participation = Participation.new
    @participation.save
    authorize @participation
  end
end
