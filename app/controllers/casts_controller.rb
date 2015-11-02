class CastsController < ApplicationController
  
  def index
    @casts = Cast.all
    #@casts = @project.id
    #@project = Project.find(params[:id])
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
  
  def project_params
      params.require(:cast).permit(:name, :email, :character, :phone_number, :project_id)
  end
  
end
