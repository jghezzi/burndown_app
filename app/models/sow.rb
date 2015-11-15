class Sow < ActiveRecord::Base

	has_one :client	
	has_many :billings
	belongs_to :project
	has_many :consultant_sows
	has_many :consultants, through: :consultant_sows

	validates_presence_of :begin_date, :end_date, :sow_hours, :bill_rate, :name

end
