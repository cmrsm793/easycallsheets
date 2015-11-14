class ArchivesController < ApplicationController
 
 
  def index
    @project = Project.where("isarchived = True")
    @user = User.find(current_user)
   

  end
  
end
