class AccomodationsController < ApplicationController
  before_action :check_if_admin, only: [:edit, :update, :destroy]

  before_action :get_accomodation, only: [:show, :edit, :update]

  def get_accomodation
    @accomodation = Accomodation.find params["id"]
  end

  def new
  end

  def create
  end

  def index
    @accomodations = Accomodation.all
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
  def accomodation_params
    params.require(:accomodation).permit(:name, :address, :image, :url)
  end
end
