class LocationFacade

  def self.get_coords(location)
    json = LocationService.get_coords(location)
    Location.new(json[:results].first[:locations].first[:latLng])
  end
  
end





















# def self.directions(origin, destination)
#   json = LocationService.get_directions(origin, destination)
#   wip = Route.new(json[:route])
#   # binding.pry
# end