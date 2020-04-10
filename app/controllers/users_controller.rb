class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create user_strong_params
    render json: @user
  end

  def show
    @user = User.find params[:id]
    if @user
      render json: @user
    else
      render json:{
        error:true,
        message:'No Users to show.'
      }
    end
  end

  def update
    @user = User.find params[:id]
    if @user
      @user.update!(user_strong_params)
      render json: @user
    else
      render json:{
        error:true,
        message:'Something went wrong.'
      }
    end
  end

  def destroy
    @user = User.find params[:id]
    if @user
      @user.destroy
      render json:{
        error:false,
        message: `#{@user} deleted.`
      }
    else
      render json:{
        error:true,
        message:'Something went wrong.'
      }
    end
  end

  private
    def user_strong_params
      params.require(:user).permit(:first_name,
        :last_name, :username, :password, :email,
        :location, :avatar)
    end
end
