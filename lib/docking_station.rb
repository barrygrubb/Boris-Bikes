class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'no bikes available' if empty?
    @bikes.pop 
  end

  def dock(bike)  
    fail 'station is full' if full?
    @bikes << bike
  end

private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.count == 0
  end
end

# below code refactored to above:
  # def full?
  #   if @bikes.length < 20
  #     false
  #   else
  #     true
  #   end
  # end

  # def empty?
  #   if @bikes.length >= 1
  #     false
  #   else
  #     true
  #   end
  # end
