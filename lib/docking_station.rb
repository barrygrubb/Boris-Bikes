class DockingStation

  attr_reader :bikes

  def release_bike
    fail 'no bikes available' unless @bikes
    @bikes
  end

  def dock(bike)  
    fail 'station is full' unless @bikes == nil
    @bikes = bike
  end

end
