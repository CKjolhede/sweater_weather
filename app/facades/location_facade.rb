class LocationFacade

  def self.get_coords(location)
    json = LocationService.get_coords(location)
    
    # binding.pry
    Location.new(json[:results].first[:locations].first[:latLng])

  end
end