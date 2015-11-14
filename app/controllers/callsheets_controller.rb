class CallsheetsController < ApplicationController
  
  def index
    @project = Project.find(params[:project_id])
    @schedule = Schedule.where(project_id: params[:project_id])
    @casts = @project.casts
    @crews = @project.crews
  end
  
  
end