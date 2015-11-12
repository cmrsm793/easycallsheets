class CastsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @project = Project.find(params[:project_id])
    @casts = @project.casts
    @crews = @project.crews
  end
  
  def new
    @project = Project.find(params[:project_id])
    @casts = @project.casts.new
    #@crews = @project.crews.new
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def create
    @project = Project.find(params[:project_id])
    @casts = @project.casts.create(cast_params)
    #@crews = @project.crews.new.create(crew_params)
    
    respond_to do |format|
      format.html
      format.js
    
      if @casts.save
        flash[:success] = "Your cast member was added sucessfully"
        #redirect_to project_casts_path(@project)
        
      else
        render :new
      end
      
      # if @crews.save
      #   flash[:success] = "Your crew member was added sucessfully"
      #   redirect_to project_casts_path(@project)
        
      # else
      #   render :new
      # end
    end
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  private
  
  def cast_params
      params.require(:cast).permit(:name, :email, :character, :phone_number)
  end
  
  def crew_params
      params.require(:crew).permit(:name, :email, :role, :phone_number)
  end
  
end
