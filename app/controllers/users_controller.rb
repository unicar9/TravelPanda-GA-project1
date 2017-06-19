class UsersController < ApplicationController

  before_action :get_user, only: [:show, :edit, :update]
  before_action 

  def get_user
    @user = User.find params["id"]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.id.present?
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :image, :password, :password_confirmation)
  end
end
