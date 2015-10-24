class SeiLoc < ActiveRecord::Base

	has_many :consultants

	validates_presence_of :name

end
