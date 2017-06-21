class DaysController < ApplicationController
  before_action :get_day, only: [:show, :edit, :update, :destroy]

  def get_day
    @day = Day.find params["id"]
  end

  def new
    @day = Day.new
    @trip = Trip.find params["trip_id"]
  end

  def create

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

  end

  private
  def day_params
    params.require(:day).permit(:trip_date, :trip_id)
  end
end
