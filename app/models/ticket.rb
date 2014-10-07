class Ticket < ActiveRecord::Base

	validates_presence_of :train, :customer
	#Link ticket to customer and train
	belongs_to :train  #rails looks for train_id column at DB
	belongs_to :customer
end
