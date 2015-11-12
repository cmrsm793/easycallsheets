class ProfilesController < ApplicationController
  
  def index
  
  end
  
  def new
    @profile = Profile.new
  end
  
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = User.find(current_user)
  end


  private
  
  def profile_params
      params.require(:project).permit(:first_name, :last_name, :phone, :time_format, :country)
  end
  
end