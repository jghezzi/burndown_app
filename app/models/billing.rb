class Billing < ActiveRecord::Base

	belongs_to :project
	belongs_to :consultant
	belongs_to :sow

	validates_presence_of :hours, :project_id, :consultant_id, :sow_id
	
end
