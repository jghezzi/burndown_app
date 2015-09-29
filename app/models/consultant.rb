class Consultant < ActiveRecord::Base

	belongs_to :sei_loc
	has_many :consultant_projects
	has_many :projects, through: :consultant_projects
	has_many :billings

end
