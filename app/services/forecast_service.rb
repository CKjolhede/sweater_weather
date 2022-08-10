class ForecastService < BaseService

  def self.get_weather(lat, long)

    response = forecast_conn.get("onecall?lat=#{lat}&lon=#{long}&exclude=minutely,alerts&units=imperial")

  forecast = JSON.parse(response.body, symbolize_names: true)
  end

end