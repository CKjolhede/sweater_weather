class BaseService

  def self.location_conn
    Faraday.new('http://www.mapquestapi.com')
  end

  def self.forecast_conn
     Faraday.new('https://api.openweathermap.org/data/2.5/onecall')
  end
end