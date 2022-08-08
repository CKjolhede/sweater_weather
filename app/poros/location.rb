class Location
attr_reader :lat, :long

  def initialize(data)
    # binding.pry
    @lat = data[:lat]
    @long = data[:lng]
  end
end