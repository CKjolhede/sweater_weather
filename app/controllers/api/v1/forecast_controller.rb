class Api::V1::ForecastController < ApplicationController
before_action :find_location
  def index
    forecast = ForecastFacade.get_forecast(@location.lat, @location.long)
    json_serialized = ForecastSerializer.format_forecast_data(forecast)
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