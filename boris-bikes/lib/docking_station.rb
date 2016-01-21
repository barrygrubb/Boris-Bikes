class DockingStation

  attr_reader :bike

  def initialize
    @bike = Array.new
  end

  def release_bike
    # print "#{@bike.length}"
    raise 'No bikes available' unless @bike.length >= 1
    @bike.pop
  end

  def dock(bike)
    @bike << bike
  end

end
