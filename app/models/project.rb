class Project < ActiveRecord::Base

	belongs_to :client
	has_many :sows
	has_many :billings
	has_many :consultant_projects
	has_many :consultants, through: :consultant_projects
	

	accepts_nested_attributes_for :billings
	accepts_nested_attributes_for :consultant_projects
	accepts_nested_attributes_for :consultants
end
