class CommitmentsController < ApplicationController

  def update
    @commitment = Commitment.find(params[:id])
    authorize @commitment
    @user = User.find(commitment_params[:user_id])
    @project = @commitment.project
    if @user.skills.include?(@commitment.skill)
      @commitment.update(user: @user)
      if @project.commitments.all? {|commitment| commitment.user.present? }
        @project.status = "on going"
        @project.save
        flash[:notice] = "Welcome in #{@project.name} ! You were the last Doogie to join so the project cans tart thanks to you :) "
      else
        flash[:notice] = "Welcome in #{@project.name} ! Thanks for joining, we are still missing volunteers to start the project"
      end
    else
      flash[:alert] = "Vous n'avez pas les compétences nécessaires ! Ciaos"
    end
  end


private

  def commitment_params
    params.require(:commitment).permit(:user_id)
  end

end
