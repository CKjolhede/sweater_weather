class ForecastFacade 
  
  def self.get_forecast(lat, long)
    # binding.pry
    json = ForecastService.get_weather(lat, long)
    # binding.pry
    Forecast.new(json)
  
    #binding.pry
  end

end