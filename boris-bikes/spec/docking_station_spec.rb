require 'docking_station'

RSpec.describe DockingStation do

  it { expect respond_to(:release_bike) }

  docking = DockingStation.new

  it 'return an instance of Bike' do
    expect(docking.release_bike).to be_a(Bike)
	end

	bikes = Bike.new

	it 'expects bike to respond to working?' do
		expect(bikes.working?).to eq(true)
	end

  it 'responds to dock' do
    expect(docking.dock(bikes))
  end

  it 'sees a docked bike' do
    expect(docking.bike)
  end

    it {is_expected.to respond_to(:dock).with(1).argument }

  it 'returns docked_bikes' do
    @bike = docking.dock(bikes)
    expect(docking.instance_variable_get(:@bike)).to eql(docking.dock(bikes))
    # print "#{@bike}"
    # print " -->"
    # print "#{docking.dock(bikes)}"
  end

end
