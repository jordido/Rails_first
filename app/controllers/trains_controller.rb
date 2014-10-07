class TrainsController < ApplicationController
	def index
		## Get the latest train and changes the name
		# @train = Train.last
		# @train.name = "Blue Train"
		# @train.save
		@trains = Train.all

	end

	def new
		#create a new train without saving to DB
		@train = Train.new
		@train.name = "My trenesito"
	end

	def show
		@train = Train.find(params[:id])
	end

	def edit
		@train = Train.find(params[:id])
	end

	def update
		# Get the train from DB
		@train = Train.find(params[:id])
		## update with params from browser
		if @train.update(train_params)
			redirect_to trains_url
		else
			render :edit
		end
	end

	def create
		## Creating new instance train with params from browser
		@train = Train.new(train_params)

		## Check if train is saved to DB (it passes validations)
		if @train.save
			redirect_to trains_url
		else
			## display the "new.html.erb" template with the @train variable
 			render :new
		end
	end

	def destroy
		@train = Train.find(params[:id])
		@train.destroy
		redirect_to trains_url
	end

	## only allows whitelisted params from the browser, 
	## to improve security and intents of suplying admin roles through parameters
	##  train_params is like params (it's a method that changes it) but reduced in case of necessity
	private
	def train_params
		params.require(:train).permit(:name, :origin, :destiny, :max_capacity)
	end

end
