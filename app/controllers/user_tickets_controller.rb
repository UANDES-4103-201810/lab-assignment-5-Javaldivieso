class UserTicketsController < ApplicationController
  def create
   @userTickets = UserTickets.new(params[:user, :ticket, :time, :paid])
   render json: @userTickets
  end

  def destroy
   @userTickets = UserTickets.find(params[:id])
   @userTickets.destroy
   render json: @userTickets
  end

  def update
   @userTickets = UserTickets.find(params[:id])
   @userTickets.update
   render json: @userTickets
  end

  def show
   @userTickets = UserTickets.find(params[:id])
   render json: @userTickets
  end
end
