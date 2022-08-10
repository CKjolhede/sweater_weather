class LocationFacade

  def self.get_coords(location)
    json = LocationService.get_coords(location)
    Location.new(json[:results].first[:locations].first[:latLng])

  
    def get_directions(origin, destination)
      data = MapQuestService.get_route(origin, destination)
      data[:route][:formattedTime]
    end
  end
end

