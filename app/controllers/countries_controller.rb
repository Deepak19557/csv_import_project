class CountriesController < ApplicationController

  def new
    @country = Country.new
  end

  def index
    @countries = Country.all 
    @country =   Country.new 
  end


  def create
    Country.import(params[:country][:file])
    redirect_to countries_path 
  end
end