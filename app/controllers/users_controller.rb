class UsersController < ApplicationController
  def index
    @user = User.find @current_user.id
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    # @user = User.find @current_user.id
  end

  def edit
    @user = User.find @current_user.id
  end

  def update
    user = User.find @current_user.id
    user.update user_params
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :image, :password, :password_confirmation)
  end
end
