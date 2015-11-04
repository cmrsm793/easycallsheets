class CastsController < ApplicationController
  
  def index
    #@project = Project.find(params[:id])
    @casts = Cast.where(project_id: params[:project_id])
    #@casts = Cast.all
    
  end
  
  def new
    
  end
  
  def create
    
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  private
  
  def cast_params
      params.require(:cast).permit(:name, :email, :character, :phone_number, :project_id)
  end
  
end
