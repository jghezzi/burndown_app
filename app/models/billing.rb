class Billing < ActiveRecord::Base

	belongs_to :project
	belongs_to :consultant
	
end
