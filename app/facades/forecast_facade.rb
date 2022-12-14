class ForecastFacade 
  
  def self.get_forecast(lat, long)

    json = ForecastService.get_weather(lat, long)

    Forecast.new(json)
  end

  def get_future_weather(route)
    binding.pry
    data = ForecastService.weather_data(route.destination.lat, route.destination.lng)
      hourly_forcasts = data[:hourly].map do |hour|
        HourlyForecast.new(hour)
        hourly_forcasts[hours]
      end
  end 
  # hours = number_of_hours(route.travel_time)
  end

  private

  def number_of_hours(travel_time)
    travel_time.split(':').first.to_i
  end
