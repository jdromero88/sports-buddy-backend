class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find params[:id]
    render json: @user
  end

  def create
    @user = User.create user_strong_params
    render json: @user
  end
  def update

  end

  def destroy

  end

  private
    def user_strong_params
      params.require(:user).permit(:first_name,
        :last_name, :username, :password, :email,
        :location, :avatar)
    end
end
