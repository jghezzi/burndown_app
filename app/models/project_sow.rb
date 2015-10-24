class ProjectSow < ActiveRecord::Base

	belongs_to :project
	belongs_to :sow

	validates_presence_of :project_id, :sow_id

end
