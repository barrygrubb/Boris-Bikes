require './lib/bike.rb'

class DockingStation

DEFAULT_CAPACITY = 20

  attr_reader :capacity, :working_bikes, :broken_bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @working_bikes = []
    @broken_bikes = []
  end

  def release_bike
    fail 'no bikes available' if empty?
    @working_bikes.pop
  end

  def dock(bike)
    fail 'station is full' if full?
    bike.working? ? @working_bikes << bike : @broken_bikes << bike
  end

private

  def full?
    ( @working_bikes.count + @broken_bikes.count ) >= @capacity
  end

  def empty?
    @working_bikes.count == 0
  end
end
