class Route
  def initialize(data)
    @data = data
  end

  def time_hash
    seconds = @data[:time]
    mm, _ss = seconds.divmod(60)
    hh, mm = mm.divmod(60)
    dd, hh = hh.divmod(24)
    { days: dd, hours: hh, minutes: mm }
  end

  def travel_time
    seconds = @data[:time]
    if seconds
      time = time_hash
      days = time[:days]
      hours = time[:hours]
      minutes = time[:minutes]
      "days: #{days}, hours: #{hours}, minutes: #{minutes}"
    else
      'impossible route'
    end
  end

  def destination_lat
    @data[:locations].last[:latLng][:lat]
  end

  def destination_lng
    @data[:locations].last[:latLng][:lng]
  end
end