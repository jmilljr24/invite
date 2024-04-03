class DashboardController < ApplicationController
  before_action :authenticate_user!, :redirect_unless_admin

  def index
    @users = User.all
  end

  private

  def redirect_unless_admin
    unless current_user.try(:admin?)
      flash[:error] = "Only admins can do that"
      redirect_to root_path
    end
  end
end
