class CustomersController < ApplicationController
	def index
		@customers = Customer.all
	end

	def new
		#create a new train without saving to DB
		@customer = Customer.new
		@customer.name = "Cliente"
	end

	def show
		@customer = Customer.find(params[:id])
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		# Get the customer from DB
		@customer = Customer.find(params[:id])
		## update with params from browser
		if @customer.update(customer_params)
			redirect_to customers_url
		else
			render :edit
		end
	end

	def create
		## Creating new instance customer with params from browser
		@customer = Customer.new(customer_params)

		## Check if customer is saved to DB (it passes validations)
		if @customer.save
			redirect_to customers_url
		else
			## display the "new.html.erb" template with the @customer variable
 			render :new
		end
	end

	def destroy
		@customer = customer.find(params[:id])
		@customer.destroy
		redirect_to customers_url
	end

	#only allows whitelisted params from the browser
	private
	def customer_params
		params.require(:customer).permit(:name, :last_name, :weight)
	end

end