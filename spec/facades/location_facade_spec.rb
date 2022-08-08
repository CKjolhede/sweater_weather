require 'rails_helper'

RSpec.describe "Location Facade" do
  it 'returns coordinates' do 
    coordinates = LocationFacade.get_coords("Denver, CO")

    expect(coordinates.lat).to eq(39.738453)
    expect(coordinates.long).to eq(-104.984853)
  end
end

