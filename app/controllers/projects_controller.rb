class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]
    # before_action :get_exp
    def new
        @experience = Experience.find(params[:experience_id])
        @experience.projects.create
        # @experience.projects.create
        # @project.experience_id = params[:id]
        # @project = Project.new(project_params)
        flash[:success] = "Project added."
        redirect_to edit_url
    end
   
    # def get_exp
    #     @experience = Experience.find_by(id: params[:id])
    # end
    # def update
    #     @experience = Experience.find(@project.experience_id) 
    #     @experience.projects.create
    #     project[:experience_id] = @experience.id
    #     flash[:success] = "Project added."
    #     redirect_to edit_url
    # end
    # private
    # def project_params
    #     params.require(:project).permit(:title,:url, :stack, :description)
        
    # end

end