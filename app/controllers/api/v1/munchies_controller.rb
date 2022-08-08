class Api::V1::MunchiesController < ApplicationController

  def index
    munchies = MunchiesFacade.get_munchies(params[:term],params[:location])
    location = LocationFacade.get_coords(params[:location])
    forecast = ForecastFacade.get_forecast(location.lat, location.long)

   json_serialized = MunchiesSerializer.format_munchies_response(munchies, forecast)
    render json: json_serialized
  end
end