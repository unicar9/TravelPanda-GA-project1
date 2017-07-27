class DaysController < ApplicationController
  before_action :get_day, except:[:new, :create]

  before_action :get_trip

  def get_day
    @day = Day.find params["id"]
  end

  def get_trip
    @trip = Trip.find params["trip_id"]
  end

  # click "add new place" link goes here template is a search form (and a create new place form as well)
  def add_new_place
  end

  #list results of places matches the search query
  def search_res
    @places = Place.where('lower(name) like ?', "%#{params[:q].downcase}%").all
  end


  def add_place
    place = Place.find params["place_id"]
    @day.places << place
    redirect_to trip_day_path(@trip,@day)
  end

  def create_and_add_place
    @place = Place.new
  end

  def add_created_place_to_day
    @place = Place.create place_params
    @day.places << @place
    redirect_to trip_day_path(@trip, @day)
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
    @day.update day_params
    redirect_to trip_day_path(@trip,@day)
  end

  def destroy
    @day.destroy
    redirect_to trip_path(@trip)
  end

  private
  def day_params
    params.require(:day).permit(:trip_date, :destination)
  end
  def place_params
    params.require(:place).permit(:place_type, :name, :address, :url, :map_url, :image)
  end
end
