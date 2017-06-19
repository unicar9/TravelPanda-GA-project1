class UsersController < ApplicationController

  before_action :get_user, only: [:show, :edit, :update]


  def get_user
    @user = User.find params["id"]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    image = "https://robohash.org/#{@user.name}.png?set=set2&size=100x100&bgset=bg1"
    @user.update image:image
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

  def show  # now in before_action
  end

  def edit
    redirect_to root_path unless @current_user == @user
  end

  def update

    @user = @current_user
    @user.update user_params
    redirect_to user_path(params["id"])

  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :image, :password, :password_confirmation)
  end
end
