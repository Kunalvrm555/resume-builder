class Experience < ApplicationRecord
    has_many(:projects, dependent: :destroy)
    accepts_nested_attributes_for(:projects , reject_if: :reject_project_create, allow_destroy: true)
    belongs_to :profile


    def reject_project_create(project)
        project[:title].blank? or project[:description].blank? or project[:stack].blank? or project[:url].blank?
    end
end
