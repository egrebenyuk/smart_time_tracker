class ProjectsController < ApplicationController
  def show
    @project= Project.first
    #@project = Project.find(params[:id])
  end 

end
