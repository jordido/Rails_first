class CustomersController < ApplicationController
	def index
		## Get the latest train and changes the name
		# @train = Train.last
		# @train.name = "Blue Train"
		# @train.save
		@customers = Customer.all

	end

	def show

	end

	def edit

	end

	def update

	end

	def create

	end

	def destroy

	end

end