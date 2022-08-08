class Munchies
  attr_reader :destination_city, :name, :address, :type, :id

  def initialize(data)
    @destination_city = "#{data[:location][:city]}" + ", " + "#{data[:location][:state]}" 
    @name = data[:name]
    @address = data[:location][:display_address]
    @type = "munchie"
    @id = "null"
  end
end

