class ForecastService < BaseService

  def self.get_weather(lat, long)

    response = forecast_conn.get("onecall?lat=#{lat}&lon=#{long}&exclude=minutely,alerts&units=imperial")

    binding.pry
  end

end