class EventsController < ApplicationController
  def create
   @event = Event.new(params[:name, :description, :start_date, :place])
   render json: @event
  end

  def destroy
   @event = Event.find(params[:id])
   @event.destroy
   render json: @event
  end

  def update
   @event = Event.find(params[:id])
   @event.update
   render json: @event
  end

  def show
   @event = Event.find(params[:id])
   render json: @event
  end
end
