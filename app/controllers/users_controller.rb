class UsersController < ApplicationController
  skip_before_action :authorized, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    find_user
  end

  def edit
    find_user
  end

  def update
    find_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
