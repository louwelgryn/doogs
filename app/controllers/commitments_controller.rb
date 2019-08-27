class CommitmentsController < ApplicationController

  def update
    @project = Project.find(params[:project_id])
    authorize @project
    current.user.skills.each do |skill|
      if skill.name = commitment
      end
    end

  end


end
