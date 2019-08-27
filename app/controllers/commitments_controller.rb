class CommitmentsController < ApplicationController

  def update
    @commitment = Commitment.find(params[:id])
    authorize @commitment
    @user = User.find(commitment_params[:user_id])
    if @user.skills.include?(@commitment.skill)
      @commitment.update(user: @user)
    else
      flash[:alert] = "Vous n'avez pas les compétences nécessaires ! Ciaos"
    end
  end





private

  def commitment_params
    params.require(:commitment).permit(:user_id)
  end

end
