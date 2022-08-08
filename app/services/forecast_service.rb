class ForecastService < BaseService

  def self.get_weather(lat, long)
    binding.pry
    response = forecast_conn.get("onecall?lat=#{lat}&lon=#{long}&exclude=minutely,alerts&units=imperial")
    binding.pry

  JSON.parse(response.body, symbolize_names: true)
  end

end