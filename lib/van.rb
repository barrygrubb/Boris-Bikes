class Van

  attr_reader :bikes

  def initialize
    @bikes = Array.new
  end

  def collect_from_dock(dock)
    dock.broken_bikes.each { |bike| @bikes << bike }
    dock.broken_bikes.clear
  end

  def deliver_to_dock(dock)
    @bikes.each do |bike|
      dock.dock(bike)
      @bikes.delete(bike)
    end
  end

  def deliver_to_garage(garage)
    @bikes.each { |bike| garage.broken_bikes << bike }
    @bikes.clear
  end

  def collect_from_garage(garage)
    garage.working_bikes.each { |bike| @bikes << bike }
    garage.working_bikes.clear
  end

end
