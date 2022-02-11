class ExperiencesController < ApplicationController
    before_action :logged_in_user, only: [:new]
    def new
        current_user.profile.experiences.create
        flash[:success] = "Experience added."
        redirect_to edit_url
    end
    private
        def experience_params
           params.require(:experience).permit(:id, :company, :position, :start, :end, :description, 
            :projects_attributes=>[:id, :title, :url, :stack, :description, :_destroy])
        end


end
