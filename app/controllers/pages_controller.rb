class PagesController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_profile, only: [:login]
  def index
  end

  def login
    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:profile_id])
  end
end
