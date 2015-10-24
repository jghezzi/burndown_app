class Client < ActiveRecord::Base
	
	has_many :client_consultants
	has_many :consultants, through: :client_consultants
	has_many :sows
	has_many :projects

	validates_presence_of :name

end
