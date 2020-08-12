class CountriesController < ApplicationController
  skip_before_action :authorized

  def index
    countries = Country.all
    render :json => countries
  end

  def show
    country = Country.find(params[:id])
    render :json => country
  end

  def new
    country = Country.new
  end

  def create
    country = Country.new(country_params)
    country.save
    render :json => country
  end

  def edit
    country = Country.find(params[:id])

  end

  def update
    country = Country.find(params[:id])
    country.update(country_params)
    render :json => country
  end

  private

  def country_params
    params.require(:country).permit(:name, :capital, :visits, :favorites)
  end

end
