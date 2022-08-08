class LocationsServices

  def self.get_coords(location)
    response = location_conn.get("/geocoding/v1/address?location=#{location}")

  response_body = JSON.parse(response.body, symbolize_names: true)

  binding.pry
  end
  
end