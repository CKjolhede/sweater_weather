class LocationFacade

  def self.get_coords(location)
    json = LocationService.get_coords(location)
    Location.new(json[:results].first[:locations].first[:latLng])
  end
  
    def self.directions(origin, destination)
      json = LocationService.get_directions(origin, destination)
      # binding.pry
      Route.new(json[:route])
    end
end

