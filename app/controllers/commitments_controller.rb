class CommitmentsController < ApplicationController
  def update
    @commitment = Commitment.find(params[:id])
    authorize @commitment

    @user = User.find(commitment_params[:user_id])
    @project = @commitment.project

    @current_project_count = @user.projects.where(status: "pending").length + current_user.projects.where(status: "on going").length

    if @user.skills.include?(@commitment.skill) && @current_project_count.zero?
      @commitment.update(user: @user)
      if @project.commitments.all? { |commitment| commitment.user.present? }
        @project.status = "on going"
        @project.save
        # POPUP MESSAGE
        @message = "Il ne manquait plus que vous pour compléter l'équipe, le projet peut maintenant commencer! "
        @icon = "success"
        @title = "Bienvenue dans ce projet!"

      else
        # POPUP MESSAGE
        @message = "Il manque encore d'autres bénévoles pour que le projet puisse démarrer."
        @icon = "success"
        @title = "Bienvenue dans ce projet!"
      end
    elsif @current_project_count.zero?
      # POPUP MESSAGE
      @message = "Vous n'avez pas les compétences requises pour rejoindre ce projet à ce poste."
      @title = "Désolés!"
      @icon = "error"
    else
      # POPUP MESSAGE
      @message = "Vous êtes déjà impliqué dans un autre projet !"
      @icon = "error"
      @title = "Désolés!"
    end
    @volunteers = @project.volunteers

    respond_to do |format|
      format.html { render 'projects/show' }
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  end

  private

  def commitment_params
    params.require(:commitment).permit(:user_id)
  end
end
