class Forecast
  attr_reader :temperature, :conditions

  def initialize(data)
    @data = data
    @temperature = current[:temperature]
    @conditions = current[:conditions]
  end

  # def attributes(number_of_days, number_of_hours) 
  #   attributes = {
  #   current_weather: Forecast.current,
  #   daily_weather: Forecast.daily(number_of_days),
  #   hourly_weather: Forecast.hourly(number_of_hours)
  # }
  # binding.pry
  # end

  def current
    current = @data[:current]
    {
      datetime: Time.at(current[:dt]).to_datetime.to_s,
      sunrise: Time.at(current[:sunrise]).to_datetime.to_s,
      sunset: Time.at(current[:sunset]).to_datetime.to_s,
      temperature: current[:temp].to_f,
      feels_like: current[:feels_like].to_f,
      humidity: current[:humidity],
      uvi: current[:uvi],
      visibility: current[:visibility],
      conditions: current[:weather].first[:description],
      icon: current[:weather].first[:icon]
    }
  end

  def daily(number_of_days)
    daily = @data[:daily].first(number_of_days)
    daily.map do |day|
      {
        date: Time.at(day[:dt]).to_date.to_s,
        sunrise: Time.at(day[:sunrise]).to_datetime.to_s,
        sunset: Time.at(day[:sunset]).to_datetime.to_s,
        max_temp: day[:temp][:max].to_f,
        min_temp: day[:temp][:min].to_f,
        conditions: day[:weather].first[:description],
        icon: day[:weather].first[:icon]
      }
    end
  end

  def hourly(number_of_hours)
    hourly = @data[:hourly].first(number_of_hours)
    hourly.map do |hour|
      {
        time: Time.at(hour[:dt]).strftime('%H:%M:%S'),
        temperature: hour[:temp].to_f,
        conditions: hour[:weather][0][:description],
        icon: hour[:weather][0][:icon]
      }
    end
  end
end