class DockingStation

  attr_reader :docked_bikes

  def release_bike
  	Bike.new
  end

  def dock(bike)
    @docked_bikes = bike
  end

  def view

  end

  def bike
    @docked_bikes
  end

end

# class Bike
#
#   def working?
#   	true
#   end
#
# end



# You will store those Bike instances as an attribute of the DockingStation instance, using an instance variable.
#
# Then, use an attribute reader to allow access to the instance variable from the DockingStation public interface.
