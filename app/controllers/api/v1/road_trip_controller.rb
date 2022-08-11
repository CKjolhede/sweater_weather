class Api::V1::RoadTripController < ApplicationController
# before_action :auth_and_auth

  def create
    
    route = LocationFacade.directions(params[:origin], params[:destination])
      if route.travel_time == 'impossible route'
        render json: RoadTripSerializer.impossible(params[:origin], params[:destination]), status: "201"
      elsif
        #arrival_forecast = ForecastFacade.get_future_weather(route)
        render json: RoadTripSerializer.format_roadtrip(params[:origin], params[:destination], route) #, arrival_forecast)
      else
        render json: { Unauthorized: "Unprocessable Entity" }, status: "422"
      end
  end

  private

  #     def auth_and_auth
  #       binding.pry
  #       unless user.api_key.include? params[:api_key]
  #         render json: { access_denied: "Unprocessable Entity"}, status: "422"
  #       end
  #     end
  # end  '

end
