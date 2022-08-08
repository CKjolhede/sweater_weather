class LocationsFacade

  def self.get_coords(location)
    json = LocationService.get_coords(location)
    json[:results][0][:locations][0][:latlong]
  end
end