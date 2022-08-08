require 'rails_helper'


RSpec.describe "forecast services" do
  it 'returns a faraday response' do
      connection = ForecastService.forecast_conn
      expect(connection).to be_a(Faraday::Connection)
  end
end