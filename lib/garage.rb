class Garage

  attr_reader :working_bikes, :broken_bikes

  def initialize
    @broken_bikes = Array.new
    @working_bikes = Array.new
  end

  def fix
    @broken_bikes.each { |bike| bike.working = true }
    transfer
  end

  def transfer
    @broken_bikes.each { |bike| @working_bikes << bike }
    @broken_bikes.clear
  end


end
