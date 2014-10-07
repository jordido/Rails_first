class Train < ActiveRecord::Base
	validates_presence_of :name, :max_capacity, :origin, :destiny
	validates_uniqueness_of :name
	validates :max_capacity, numericality: {greater_than: 0} 
	validates :origin, :destiny, length: {is: 5}
	has_many :tickets
	has_many :customers, through: :tickets
end
