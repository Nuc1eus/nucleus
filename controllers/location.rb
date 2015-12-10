class LocationsController < ApplicationController

  get '/' do
    authorization_check
    @locations=Location.all
    erb :locations
  end

  post '/' do
    @location=Location.new
    @location.location_name=params[:location_name]
    @location.location_desc=params[:location_desc]
    @location.location_image=params[:location_image]
    @location.sub_location=params[:sub_location]
    @location.save
    @locations=Location.all
    redirect '/locations'
  end

end
