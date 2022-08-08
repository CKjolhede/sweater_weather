class LocationFacade

  def self.get_coords(location)
    json = LocationService.get_coords(location)
    Location.new(json[:results][0][:locations][0][:latlong])

  # binding.pry
  end
end