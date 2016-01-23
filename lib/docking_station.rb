class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'no bikes available' unless @bikes.length >= 1
    @bikes.pop 
  end

  def dock(bike)  
    fail 'station is full' unless @bikes.length < 20
    @bikes << bike
  end

end
