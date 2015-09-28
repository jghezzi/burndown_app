class ConsultantProject < ActiveRecord::Base

	belongs_to :consultant
	belongs_to :project

end
