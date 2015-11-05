class CastsController < ApplicationController
  
  def index
    @casts = Cast.where(project_id: params[:project_id])
    @crews = Crew.where(project_id: params[:project_id])
  end
  
  def new
    @casts = Cast.new
    @crews = Crew.new
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def create
    @casts = Cast.new(cast_params)
    @crews = Crew.new(crew_params)
    
    if @casts.save
      flash[:success] = "Your cast member was added sucessfully"
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
  
  def cast_params
      params.require(:cast).permit(:name, :email, :character, :phone_number, :project_id)
  end
  
  def crew_params
      params.require(:crew).permit(:name, :email, :role, :phone_number, :project_id)
  end
  
end
