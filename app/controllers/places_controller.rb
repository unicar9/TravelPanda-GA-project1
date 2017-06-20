class PlacesController < ApplicationController

  before_action :check_if_admin, only: [:index]

  before_action :get_place, only: [:show, :edit, :update]

  def get_place
    @place = Place.find params["id"]
  end

  def new
    @place = Place.new
  end

  def create

  end

  def index
    @places = Place.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
