class ForecastFacade 
  
  def self.get_forecast(lat, long)

    json = ForecastService.get_weather(lat, long)

    Forecast.new(json)
  
  
  end

end