class TrainsController < ApplicationController
	def index
		## Get the latest train and changes the name
		# @train = Train.last
		# @train.name = "Blue Train"
		# @train.save
		@trains = Train.all

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
