class TripsController < ApplicationController
  before_action :get_trip, only: [:show, :edit, :update, :destroy]

  def get_trip
    @trip = Trip.find params["id"]
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create trip_params
    @current_user.trips << @trip
    redirect_to user_path(@current_user)
  end

  def index
    @trips = Trip.all
  end

  def show
  end

  def edit
  end

  def update
    @trip.update trip_params
    redirect_to trip_path(params["id"])
  end

  def destroy
    @trip.destroy
    redirect_to user_path(@current_user)
  end

  private
  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date, :destination, :duration)
  end
end
