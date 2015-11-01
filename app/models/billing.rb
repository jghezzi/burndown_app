class Billing < ActiveRecord::Base

	belongs_to :project
	has_one :consultant
	has_one :sow

	validates_presence_of :bill_date
	
end
