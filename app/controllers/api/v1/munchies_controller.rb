class Api::V1::MunchiesController < ApplicationController
  before_action :find_location

  def index
    munchies = MunchiesFacade.get_munchies(params[:term],params[:location])
    forecast = ForecastFacade.get_forecast(@location.lat, @location.long)
    
    json_serialized = MunchiesSerializer.format_munchies_response(munchies, forecast)
    render json: json_serialized
  end


private

  def find_location
      if params[:location].present?
        @location = LocationFacade.get_coords(params[:location]) 
      else
        render status: 404
      end
  end
end