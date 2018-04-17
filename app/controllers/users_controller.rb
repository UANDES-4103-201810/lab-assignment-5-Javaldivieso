class UsersController < ApplicationController
  def create
   @user = User.new(params[:name, :last_name, :email, :phone, :password, :address])
   render json: @user
  end

  def destroy
   @user = User.find(params[:id])
   @user.destroy
   render json: @user
  end

  def update
   @user = User.find(params[:id])
   @user.update
   render json: @user
  end

  def show
   @user = User.find(params[:id])
   render json: @user
  end
end
