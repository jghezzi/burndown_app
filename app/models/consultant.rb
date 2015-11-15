class Consultant < ActiveRecord::Base

	belongs_to :sei_loc
	has_many :client_consultants
	has_many :clients, through: :client_consultants
	has_many :consultant_projects
	has_many :projects, through: :consultant_projects
	has_many :billings
	has_many :consultant_sows
	has_many :sows, through: :consultant_sows

	validates_presence_of :first_name, :last_name, :sei_loc_id

	accepts_nested_attributes_for :sei_loc
	accepts_nested_attributes_for :consultant_projects
	accepts_nested_attributes_for :projects
	accepts_nested_attributes_for :billings
end
