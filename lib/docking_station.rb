require './lib/bike.rb'

class DockingStation

DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'no bikes available' if empty?
    fail 'no working bike' unless (@bikes.last).working?
    @bikes.pop 
  end

  def dock(bike)
    fail 'station is full' if full?
    @bikes << bike
  end

private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.count == 0
  end
end

