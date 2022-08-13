class ForecastSerializer
  def self.format_forecast_data(forecast)
  wip = 
    {
      data: 
      {
        id: nil,
        type: 'forecast',
        attributes: 
        {
          current_weather: 
          {
            datetime: Time.at(forecast.data[:current][:dt]).to_s,
            sunrise: Time.at(forecast.data[:current][:sunrise]).to_s,
            sunset: Time.at(forecast.data[:current][:sunset]).to_s,
            temperature: forecast.temperature,
            feels_like: forecast.data[:current][:feels_like].to_f,
            humidity: forecast.data[:current][:humidity],
            uvi: forecast.data[:current][:uvi],
            visibility: forecast.data[:current][:visibility],
            conditions: forecast.conditions,
            icon: forecast.data[:current][:weather][0][:icon].to_s    
          },
          daily_weather:  forecast.data[:daily][0..4].map do |day|
          { 
            date: Time.at(day[:dt]).strftime('%Y,%m,%e'),
            sunrise: (Time.at(day[:sunrise]).to_s), 
            sunset: (Time.at(day[:sunset]).to_s),
            max_temp: day[:temp][:max].to_f,
            min_temp: day[:temp][:min].to_f,
            conditions: day[:weather][0][:description],
            icon: day[:weather][0][:icon].to_s        
          }
          end,
          hourly_weather: forecast.data[:hourly][0..7].map do |hour|
          { 
            time: Time.at(hour[:dt]).strftime('%H,%M,%S'),
            temperature: hour[:temp].to_f,
            conditions: hour[:weather][0][:description].to_s,
            icon: hour[:weather][0][:icon]
          }
          end
        }
      }
    }
  end
end