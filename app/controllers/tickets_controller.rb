class TicketsController < ApplicationController
  def create
   @ticket = Ticket.new(params[:description, :price, :event])
   render json: @ticket
  end

  def destroy
   @ticket = Ticket.find(params[:id])
   @ticket.destroy
   render json: @ticket
  end

  def update
   @ticket = Ticket.find(params[:id])
   @ticket.update
   render json: @ticket
  end

  def show
   @ticket = Ticket.find(params[:id])
   render json: @ticket
  end
end
end
