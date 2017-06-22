class DaysController < ApplicationController
  before_action :get_day, only: [:show, :edit, :update, :destroy]

  before_action :get_trip

  def get_day
    @day = Day.find params["id"]
  end

  def get_trip
    @trip = Trip.find params["trip_id"]
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.create day_params
    @trip.days << @day
    redirect_to trip_day_path(@trip,@day)
  end

  def index

  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
    @day.destroy
    redirect_to trip_path(@trip)
  end

  private
  def day_params
    params.require(:day).permit(:trip_date)
  end
end
