class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @user_upcoming_project = current_user.projects.find_by(status: "En attente")
    @user_current_project = current_user.projects.find_by(status: "En cours")
    @user_past_projects = current_user.projects.where(status: "Terminé")
  end
end
