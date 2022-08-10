class LocationService < BaseService

  def self.get_coords(location)
    response = location_conn.get("/geocoding/v1/address?location=#{location}")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_directions( to, from)
      response = location_conn.get("/directions/v1/route?from=#{from}&to=#{to}")
        JSON.parse(response.body, symbolize_names: true)
  end
end