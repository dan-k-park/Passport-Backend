class TripsController < ApplicationController
  skip_before_action :authorized

  def index
    trips = Trip.all
    render :json => trips
  end

  def show
    trip = Trip.find(params[:id])
  end

  def new
    trip = Trip.new
  end

  def create
    trip = Trip.new(trip_params)
    trip.save
    render :json -> trip
  end

  def edit
    trip = Trip.find(params[:id])
  end

  def update
    trip = Trip.find(params[:id])
    trip.update(trip_params)
    render :json => trip
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:user_id, :country_id, :favorite, :comment)
  end

end
