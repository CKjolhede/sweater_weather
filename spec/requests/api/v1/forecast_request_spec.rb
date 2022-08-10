require 'rails_helper'

RSpec.describe 'forecast request' do
  context "happy paths" do
    it 'return the forecast with all appropriate attributes' do
      headers = {
        'CONTENT_TYPE' => 'application/json',
        'ACCEPT' => 'application/json'
      }
      get '/api/v1/forecast?location=denver,co', headers: headers
      forecast = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(forecast).to be_a Hash
      expect(forecast[:data]).to have_key(:id)
      expect(forecast[:data]).to have_key(:type)
      expect(forecast[:data]).to have_key(:attributes)
      expect(forecast[:data][:attributes]).to have_key(:current_weather)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:datetime)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:sunrise)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:sunset)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:temperature)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:feels_like)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:humidity)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:uvi)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:visibility)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:conditions)
        expect(forecast[:data][:attributes][:current_weather]).to have_key(:icon)
        expect(forecast[:data][:attributes]).to have_key(:hourly_weather)
        expect(forecast[:data][:attributes][:hourly_weather]).to be_an Array
        expect(forecast[:data][:attributes][:hourly_weather][0]).to have_key(:time)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to have_key(:temperature)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to have_key(:icon)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to have_key(:conditions)
        expect(forecast[:data][:attributes]).to have_key(:daily_weather)
        expect(forecast[:data][:attributes][:daily_weather]).to be_an Array
        expect(forecast[:data][:attributes][:daily_weather][0]).to have_key(:sunrise)
        expect(forecast[:data][:attributes][:daily_weather][0]).to have_key(:sunset)
        expect(forecast[:data][:attributes][:daily_weather][0]).to have_key(:max_temp)
        expect(forecast[:data][:attributes][:daily_weather][0]).to have_key(:min_temp)
        expect(forecast[:data][:attributes][:daily_weather][0]).to have_key(:conditions)
        expect(forecast[:data][:attributes][:daily_weather][0]).to have_key(:icon)
    end
  end 

  context "sad paths" do
    it 'show that unselected attributes are not returned' do
      headers = {
        'CONTENT_TYPE' => 'application/json',
        'ACCEPT' => 'application/json'
      }
      get '/api/v1/forecast?location=denver,co', headers: headers
      forecast = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
        expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:clouds)
        expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:wind_speed)
        expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:wind_deg)
        expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:wind_gust)
        expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:pressure)
        expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:dew_point)

        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:temp)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:pressure)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:humjdity)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:dew_point)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:wind_speed)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:wind_deg)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:wind_gust)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:weather)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:clouds)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:pop)
        expect(forecast[:data][:attributes][:daily_weather][0]).to_not have_key(:uvi)

        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:sunrise)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:sunset)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:max_temp)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:min_temp)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:pressure)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:humjdity)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:dew_point)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:wind_speed)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:wind_deg)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:wind_gust)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:weather)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:clouds)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:pop)
        expect(forecast[:data][:attributes][:hourly_weather][0]).to_not have_key(:uvi)
      
        expect(forecast[:data][:attributes]).to_not have_key(:minutely)
    end
  end

  context 'edge cases' do
    it 'invalid parameters result in a status of 404' do
        headers = {
        'CONTENT_TYPE' => 'application/json',
        'ACCEPT' => 'application/json'
        }
      get '/api/v1/forecast', headers: headers, params: {refridgerator: "Denver"}

      #expect(response).to_not be_successful
      expect(response.status).to eq(404)
    end
  end
end