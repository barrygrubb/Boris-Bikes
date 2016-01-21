require 'docking_station'

RSpec.describe DockingStation do

  it { expect respond_to(:release_bike) }

  docking = DockingStation.new
  docking_full = DockingStation.new
  bikes = Bike.new

  docking_full.dock(bikes)

  it 'return an instance of Bike' do
    expect(docking_full.release_bike).to be_a(Bike)
	end

	it 'expects bike to respond to working?' do
		expect(bikes.working?).to eq(true)
	end

  it 'responds to dock' do
    expect(docking_full.dock(bikes))
  end

  it 'sees a docked bike' do
    expect(docking_full.bike)
  end

    it {is_expected.to respond_to(:dock).with(1).argument }

  it 'returns docked_bikes' do
    @bike = docking_full.dock(bikes)
    expect(docking_full.instance_variable_get(:@bike)).to eql(docking_full.dock(bikes))
    # print "#{@bike}"
    # print " -->"
    # print "#{docking.dock(bikes)}"
  end

  it 'returns error' do
    expect { docking.release_bike }.to raise_error('No bikes available')
  end

end
