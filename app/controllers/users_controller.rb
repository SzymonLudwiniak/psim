class UsersController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "User has been added!"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :lastname, :email)
  end
end
