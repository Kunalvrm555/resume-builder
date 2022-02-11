class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]
    # before_action :get_exp
    def new
        @experience = Experience.find(params[:experience_id])
        @experience.projects.create
        flash[:success] = "Project added."
        redirect_to edit_url
    end

end