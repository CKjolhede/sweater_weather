class Api::V1::ForecastController < ApplicationController

  def index
    location = LocationFacade.get_coords(params[:location])
    forecast = ForecastFacade.get_forecast(location.lat, location.long)
    json = ForecastSerializer.format_forecast_data(forecast)
  end
end