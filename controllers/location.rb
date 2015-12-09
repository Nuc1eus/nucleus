#mapped to '/location'
class LocationsController < ApplicationController
  get '/' do
    authorization_check
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
    return @locations.to_json
  end

end
