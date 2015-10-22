class ClientConsultant < ActiveRecord::Base

	belongs_to :client
	belongs_to :consultant

end
