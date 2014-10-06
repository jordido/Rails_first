class TicketsController < ApplicationController
  def index
  	@tickets = Ticket.all
  end

	def new
		@ticket = Ticket.new
	end 

	def show
		@ticket = Ticket.find(params[:id])
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])
		if @ticket.update(ticket_params)
			redirect_to tickets_url
		else
			render :edit
		end
	end

	def create
		@ticket = Ticket.new(ticket_params)
		if @ticket.save
			redirect_to tickets_url
		else
 			render :new
		end
	end

	def destroy
		@ticket = Ticket.find(params[:id])
		@ticket.destroy
		redirect_to tickets_url
	end

	#only allows whitelisted params from the browser
	private
	def ticket_params
		params.require(:ticket).permit(:id, :train_id, :customer_id)
	end

end