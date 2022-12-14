class BaseService

  def self.location_conn
    Faraday.new('http://www.mapquestapi.com') do |req|
      req.params['key'] = ENV['location_api_key']
    end
  end

  def self.forecast_conn
    Faraday.new('https://api.openweathermap.org/data/2.5/') do |req|
        req.params['appid'] = ENV['forecast_api_key']
    end
  end

  def self.munchies_conn
    Faraday.new('https://api.yelp.com/v3/businesses/search') do |req|
      req.headers['Authorization'] = ENV['yelp_api_key']
    end
  end
end