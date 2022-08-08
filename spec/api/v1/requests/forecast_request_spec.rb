require 'rails_helper'

RSpec.describe 'forecast request' do
  it 'returns the forecast for ' do
    headers = {
      'CONTENT_TYPE' => 'application/json',
      'ACCEPT' => 'application/json'
    }
    get '/api/v1/forecast?location=denver,co', headers: headers
    forecast = JSON.parse(response.body, symbolize_names: true)
    # binding.pry

    expect(response).to be_successful
    expect(forecast).to be_a Hash
    expect(forecast[:data]).to have_key(:id)
    expect(forecast[:data]).to have_key(:type)
    expect(forecast[:data]).to have_key(:attributes)
    expect(forecast[:data][:attributes]).to have_key(:current_weather)
    expect(forecast[:data][:attributes]).to have_key(:daily_weather)
    expect(forecast[:data][:attributes]).to have_key(:hourly_weather)

    expect(forecast[:data][:attributes]).to_not have_key(:minutely)
    expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:wind_speed)
    expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:wind_deg)
    expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:wind_gust)
    expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:pressure)
    expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:dew_point)
  end
end