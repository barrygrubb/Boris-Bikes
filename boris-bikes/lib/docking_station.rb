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
    #print "#{@bike.length}"

    raise 'Docking station full' unless @bike.length == 0
    @bike << bike

    # if @bike.length > 0
    #   raise 'Docking station full'
    # else
    #   @bike << bike
    # end
  end

end
