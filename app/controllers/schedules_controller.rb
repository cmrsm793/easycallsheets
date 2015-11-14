class SchedulesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @schedule = Schedule.where(project_id: params[:project_id])
    # @cast = @schedule.casts
    # @crew = @schedule.crews
  end
  
  def new
    @schedule = Schedule.new
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def create
    @schedule = Schedule.new(schedule_params)
    
    if @schedule.save
      flash[:success] = "Your schedule was created sucessfully"
      #redirect_to project_casts_path(@project)
      
    else
      render :new
    end
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  private
  
  def schedule_params
      params.require(:schedule).permit(:time, :location, :description, :project_id, casts_attributes: [ :name, :email, :character, :phone_number],
      crews_attributes: [ :name, :email, :role, :phone_number])
  end

  
end
