class PlacesController < ApplicationController
  def create
   @place = Place.new(params[:name, :capacity, :address])
   render json: @place
  end

  def destroy
   @place = Place.find(params[:id])
   @place.destroy
   render json: @place
  end

  def update
   @place = Place.find(params[:id])
   @place.update
   render json: @place
  end

  def show
   @place = Place.find(params[:id])
   render json: @place
  end
end
