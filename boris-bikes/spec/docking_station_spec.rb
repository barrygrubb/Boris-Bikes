require 'docking_station'

RSpec.describe DockingStation do

  it { expect respond_to(:release_bike) }

  docking = DockingStation.new

  it 'return an instance of Bike' do
    expect(docking.release_bike).to be_a(Bike)
	end

	bike = Bike.new

	it 'expects bike to respond to working?' do
		expect(bike.working?).to eq(true)
	end

  it 'responds to dock' do
    expect(docking.dock(bike))
  end

  it 'sees a docked bike' do
    expect(docking.view)
  end

    it {is_expected.to respond_to(:dock).with(1).argument }

    it {returns docked_bikes.instance_variable_get(@docked_bikes)}
end
