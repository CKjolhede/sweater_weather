class ForecastSerializer
  def self.format_forecast_data(forecast)
    {
      data: {
        id: nil,
        type: 'forecast',
        attributes: {
          current_weather: forecast.current,
          daily_weather: forecast.daily(5),
          hourly_weather: forecast.hourly(8)
        }
      }
    }
  end
end
        # attributes: { forecast.attributes(5,8)
          # current_weather: {
          #   datetime: '',
          #   sunrise: '',
          #   sunset: '',
          #   temperature: '',
          #   feels_like: '',
          #   humidity: '',
          #   uvi: '',
          #   visibility: '',
          #   conditions: '',
          #   icon: ''
          # },
          # daily_weather: {
          #   date: '',
          #   sunrise: '',
          #   sunset: '',
          #   max_temp: '',
          #   min_temp: '',
          #   conditions: '',
          #   icon: ''
          # },
          # hourly_weather: {
          #   time: '',
          #   temperature: '',
          #   conditions: '',
          #   icon: ''}