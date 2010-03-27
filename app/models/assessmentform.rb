class Assessmentform < ActiveRecord::Base
  attr_accessible :subject_id, :first_name, :last_name, :email, :phone, :address_1, :address_2, :city, :state, :zip_code, :comments
    validates_presence_of :first_name, :last_name, :email, :phone
  belongs_to :subject
end
