class PlacesController < ApplicationController

  # before_action :check_if_admin, only: [:index]

  before_action :get_place, only: [:show, :edit, :update, :destroy]

  def get_place
    @place = Place.find params["id"]
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new place_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload params[:file]
      @place.image = req['public_id']
    end

    @place.save
    redirect_to place_path(@place.id)
  end

  def index
    @places = Place.all
  end

  def show
  end

  def edit

  end

  def update
    @place.update place_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload params[:file]
      @place.image = req['public_id']
    end
    @place.save
    redirect_to place_path(params["id"])
  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  private
  def place_params
    params.require(:place).permit(:name, :address, :image, :url, :map_url, :place_type)
  end
end
