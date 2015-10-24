class ConsultantSow < ActiveRecord::Base

	belongs_to :consultant
	belongs_to :sow

	validates_presence_of :consultant_id, :sow_id

end
