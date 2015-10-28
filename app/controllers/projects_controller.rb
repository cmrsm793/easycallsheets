class ProjectsController < ApplicationController
  #before_action :authenticate_user!
  
  def index
    @projects = Project.paginate(page: params[:page], per_page: 4)
    
  end
  
  def show
    @projects = Project.find(params[:id])
  end
  
  def new
    @projects = Project.new
  end
  
  def create
    @projects = Project.new(project_params)
    #@projects.producer = Producer.find(2)
    
    if @projects.save
      flash[:success] = "Your project was created sucessfully"
      redirect_to projects_path
      
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
      params.require(:project).permit(:projectname, :gendatetime, :shootdatetime, :message, :notes, :address, :isarchived, :sent, :saved    )
    end
  
end
