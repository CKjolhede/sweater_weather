class MunchiesSerializer
  def self.format_munchies_response(munchies, forecast)
    {
  "data": {
    "id": "#{munchies.id}",
    "type": "#{munchies.type}",
    "attributes": {
      "destination_city": "#{munchies.destination_city}",
      "forecast": {
        "summary": "#{forecast.conditions}",
        "temperature": "#{forecast.temperature}"
      },
      "restaurant": {
        "name": "#{munchies.name}",
        "address": "#{munchies.address}"
      }
    }
  }
}
  end
end