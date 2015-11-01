class Sow < ActiveRecord::Base

	has_one :client	
	has_many :billings
	belongs_to :project

	validates_presence_of :begin_date, :end_date, :sow_hours, :bill_rate, :name

end
