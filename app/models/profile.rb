class Profile < ApplicationRecord
    has_many(:experiences, dependent: :destroy)
    accepts_nested_attributes_for(:experiences , reject_if: :reject_experience_create, allow_destroy: true)
    has_many(:educations, dependent: :destroy)
    accepts_nested_attributes_for(:educations , reject_if: :reject_education_create, allow_destroy: true)
    has_one_attached :avatar
    belongs_to :user

    def reject_education_create(education)
        education[:degree].blank? or education[:school].blank? or education[:start].blank? or education[:end].blank?
    end
 
    def reject_experience_create(experience)
        experience[:company].blank? or experience[:description].blank? or experience[:start].blank? or experience[:end].blank?
    end
end