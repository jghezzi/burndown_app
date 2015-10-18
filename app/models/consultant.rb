class Consultant < ActiveRecord::Base

	belongs_to :sei_loc
	has_many :consultant_projects
	has_many :projects, through: :consultant_projects
	has_many :billings

	accepts_nested_attributes_for :sei_loc
	accepts_nested_attributes_for :consultant_projects
	accepts_nested_attributes_for :projects
end
