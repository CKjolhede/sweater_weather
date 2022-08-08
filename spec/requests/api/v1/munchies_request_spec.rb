require 'rails_helper'

RSpec.describe "Munchies Request" do
  it "returns a json with destination city, restuarant address, food type, and forecast summary and temp" do

    get '/api/v1/munchies?term=chinese&location=denver, co'
    munchies = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(munchies).to be_a Hash
    expect(munchies[:data]).to have_key(:id)
    expect(munchies[:data]).to have_key(:type)
    expect(munchies[:data]).to have_key(:attributes)
    expect(munchies[:data][:attributes]).to have_key(:destination_city)
    expect(munchies[:data][:attributes]).to have_key(:forecast)
    expect(munchies[:data][:attributes][:forecast]).to have_key(:summary)
    expect(munchies[:data][:attributes][:forecast]).to have_key(:temperature)
    expect(munchies[:data][:attributes]).to have_key(:restaurant)
    expect(munchies[:data][:attributes][:restaurant]).to have_key(:name)
    expect(munchies[:data][:attributes][:restaurant]).to have_key(:address)

    expect(munchies[:data][:attributes]).to_not have_key(:alias)

  end

  
end