class Customer < ActiveRecord::Base
	validates_presence_of :last_name, :weight
	validates :weight, numericality: {greater_than: 0}
	has_many :tickets
end
