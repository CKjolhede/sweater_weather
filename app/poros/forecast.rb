class Forecast
  attr_reader :temperature, :conditions, :data

  def initialize(data)
    @data = data
    @temperature = data[:current][:temp].to_f
    @conditions = data[:current][:weather][0][:description]
  end
end