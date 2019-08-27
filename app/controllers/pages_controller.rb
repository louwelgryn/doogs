class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @user_current_project = current_user.projects.find_by(status: "on going")
  end
end
