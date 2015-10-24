class ConsultantProject < ActiveRecord::Base

	belongs_to :consultant
	belongs_to :project

	validates_presence_of :consultant_id, :project_id

end
