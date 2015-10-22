class Sow < ActiveRecord::Base

	has_one :client
	has_many :consultant_sows
	has_many :consultants, through: :consultant_sows	
	belongs_to :project

end
