class Project < ActiveRecord::Base

	belongs_to :client
	has_many :consultant_projects
	has_many :consultants, through: :consultant_projects
	has_many :billings

end
