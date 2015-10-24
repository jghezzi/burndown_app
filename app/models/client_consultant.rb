class ClientConsultant < ActiveRecord::Base

	belongs_to :client
	belongs_to :consultant

	validates_presence_of :client_id, :consultant:id

end
