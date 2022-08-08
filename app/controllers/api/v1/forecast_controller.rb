class Api::V1::ForecastController < ApplicationController

  def index
    location = LocationFacade.get_coords(params[:location])
    # binding.pry
    forecast = ForecastFacade.get_forecast(location.lat, location.long)
    # binding.pry
    json_serialized = ForecastSerializer.format_forecast_data(forecast)
    render json: json_serialized
  end
end