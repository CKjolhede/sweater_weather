require 'rails_helper'

RSpec.describe 'forecast request' do
  it 'returns the forecast for ' do
    # headers = {
    #   'CONTENT_TYPE' => 'application/json',
    #   'ACCEPT' => 'application/json'
    # }
    get '/api/v1/forecast?location=longmont,co' #, headers: headers

    # binding.pry

    expect(response).to eq('')
  end
end