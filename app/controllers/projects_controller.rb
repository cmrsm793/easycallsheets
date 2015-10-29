class ProjectsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @project = Project.paginate(page: params[:page], per_page: 4)
    @user = User.find(current_user)

  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def new
    @project = Project.new
    
   
  end
  
  def create
    @project = Project.new(project_params)
    @project.user = User.find(current_user)
    
    
    if @project.save
      flash[:success] = "Your project was created sucessfully"
      redirect_to recipients_path
      
    else
      render :new
    end
  end
  
  def recipients
  end
  
  def edit
    @project = Project.find(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update(project_params) 
      flash[:success] = "Your project was updated successfully!"
      redirect_to project_path(@project)
    else
      render :edit
    end
  end
  
  private
  
    def project_params
      params.require(:project).permit(:projectname, :gendatetime, :shootdatetime, :message, :notes, :address, :isarchived, :sent, :saved)
    end
    
    
    
  
end
