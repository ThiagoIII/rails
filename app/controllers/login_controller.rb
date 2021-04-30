class LoginController < ApplicationController

  def index 
    @users = User.all
    render json: @users
  end

  def show 
    @users = User.find(params[:id])
    render json: @users
  end

  def create
    @user = User.create!(user_params
    )
    render json: @user
  end

  def user_params
    params.permit(:username, :password)
  end

end
