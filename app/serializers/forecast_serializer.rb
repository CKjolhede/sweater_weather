class ForecastSerializer
  def self.format_forecast_data(forecast)
    {
      data: {
        id: nil,
        type: 'forecast',
        attributes: {
          current_weather: {
            datetime: '',
            sunrise: '',
            sunset: '',
            temperature: '',
            feels_like: '',
            humidity: '',
            uvi: '',
            visibility: '',
            conditions: '',
            icon: ''
          },
          daily_weather: {
            date: '',
            sunrise: '',
            sunset: '',
            max_temp: '',
            min_temp: '',
            conditions: '',
            icon: ''
          },
          hourly_weather: {
            time: '',
            temperature: '',
            conditions: '',
            icon: ''
          }
        }
      }
    }
  end
end