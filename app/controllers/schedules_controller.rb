class SchedulesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @schedule = Schedule.where(project_id: params[:project_id])
    @cast = Cast.where(project_id: params[:project_id])
    @crew = Crew.where(project_id: params[:project_id])
   
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
      params.require(:schedule).permit(:time, :location, :cast, :crew, :description, :project_id)
  end

  
end
