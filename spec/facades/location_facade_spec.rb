require 'rails_helper'

RSpec.describe "Location Facade" do
  xit 'returns coordinates' do 
    coordinates = LocationService.get_coords("Denver, CO")
binding.pry
    expect(results[:latLng]).to eq({:lat=>39.738453, :lng=>-104.984853})
  
  end
end

