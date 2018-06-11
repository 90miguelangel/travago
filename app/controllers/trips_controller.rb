class TripsController < ApplicationController

  before_action :get_trip, only: [:edit, :update, :show, :destroy]

  def get_trip
    @trip = Trip.find( params[:id] )
  end

  def index
    @trips = Trip.all
  end

  def new 
    @trip = Trip.new
    @trip.resources.build
  end 

  def show 
  end

  def create
    @trip = Trip.new  trips_param

    if params['add_resource']
      @trip.resources.build
    else
      if @trip.save
        redirect_to trips_path
      else
        render :new
      end
      return
    end
    render :new
  end

  def edit 
  end

  def update
    if params['add_resource']
      @trip.resources.build
    else
      if @trip.update trips_param
        redirect_to trips_path
      else
        render :edit
      end
      return
    end
    render :new
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end

  def trips_param
    params.require(:trip).permit(:name, :start_date, :end_date, traveler_ids: [], resources_attributes: [:resource_type_id, :name, :price])
  end

end
