class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: @user
  end

  def login
    @user = User.find_by(username: params[:username])
    if @user
      render json: @user
    else
      render json: {error: 'No User with that name exists'}
    end
  end

  private

  def user_params
    params.permit(:username, :email)
  end

end
