require 'rails_helper'

RSpec.describe ForecastFacade do
 it "returns forecast" do
  data = {:lat=>39.738453, :lng=>-104.984853}
  forecast = ForecastFacade.get_forecast(data[:lat], data[:lng])

expect(forecast).to be_a(Forecast)


  #  expect(forecast[:current]).to have_key(:date)
  #  expect(current[:weather]).to have_key(:sunrise)
  #  expect(current).to have_key(:sunset)
  #  expect(current).to have_key(:temp)
  #  expect(current).to have_key(:feels_like)
  #  expect(current).to have_key(:humidity)
  #  expect(current).to have_key(:uvi)
  #  expect(current).to have_key(:visibility)

  #  expect(current[:weather][0]).to have_key(:description)
  #  expect(current[:weather][0]).to have_key(:icon)
   
#     expect(current[:datetime]).to be_a(String)
#     expect(current[:sunrise]).to be_a(String)
#     expect(current[:sunset]).to be_a(String)
#     expect(current[:temperature]).to be_a(Float)
#     expect(current[:feels_like]).to be_a(Float)
#     expect(current[:humidity]).to be_a(Integer).or be_a(Float)
#     expect(current[:uvi]).to be_a(Integer).or be_a(Float)
#     expect(current[:visibility]).to be_a(Integer).or be_a(Float)
#     expexpect(current[:icon]).to be_a(String)
#   end
# end



#   #     current = forecast.current_formatted
#   #     expect(current).to be_a(Hash)
#   #     expect(current.keys).to include(
#   #       :datetime, :sunrise, :sunset, :temperature, :feels_like,
#   #       :humidity, :uvi, :visibility, :conditions, :icon
#   #     )
#   #     expect(current.keys.count).to eq(10) # checks that only the keys above are present

#   #     daily = forecast.daily_formatted(5)
#   #     expect(daily).to be_a(Array)
#   #     expect(daily.count).to eq(5)
#   #     daily.each do |day|
#   #       expect(day.keys).to include(
#   #         :date, :sunrise, :sunset, :max_temp, :min_temp, :conditions, :icon
#   #       )
#   #       expect(day.keys.count).to eq(7) # checks that only the keys above are present
#   #       expect(day[:date]).to be_a(String)
#   #       expect(day[:sunrise]).to be_a(String)
#   #       expect(day[:sunset]).to be_a(String)
#   #       expect(day[:max_temp]).to be_a(Float)
#   #       expect(day[:min_temp]).to be_a(Float)
#   #       expect(day[:conditions]).to be_a(String)
#   #       expect(day[:icon]).to be_a(String)
#   #     end

#   #     hourly = forecast.hourly_formatted(8)
#   #     expect(hourly).to be_a(Array)
#   #     expect(hourly.count).to eq(8)
#   #     hourly.each do |hour|
#   #       expect(hour.keys).to include(
#   #         :time, :temperature, :conditions, :icon
#   #       )
#   #       expect(hour.keys.count).to eq(4) # checks that only the keys above are present
#   #       expect(hour[:time]).to be_a(String)
#   #       expect(hour[:temperature]).to be_a(Float)
#   #       expect(hour[:conditions]).to be_a(String)
#   #       expect(hour[:icon]).to be_a(String)
#   #     end
#   #   end
 end
end