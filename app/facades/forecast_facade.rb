class ForecastFacade 
  
  def self.get_forecast(lat, long)

    json = ForecastService.get_weather(lat, long)

    Forecast.new(json)
  end

  def get_future_weather(destination, travel_time)
    data = OpenWeatherService.weather_data(destination.latitude, destination.longitude)
    hourly_forcasts = data[:hourly].map do |hour|
      HourlyForecast.new(hour)
    end
    hours = number_of_hours(travel_time)
    hourly_forcasts[hours]
  end

  private

  def number_of_hours(travel_time)
    travel_time.split(':').first.to_i
  end
end
