require 'DockingStation'

describe DockingStation do
#		it 'Responds to release_bike' do
#		expect(DockingStation).to respond_to(release_bike)
	it { should respond_to(:release_bike)}

	station = DockingStation.new
	bike = station.release_bike

	it { expect(bike.working?).to eq true}

	it { expect(station).to respond_to(:dock).with(1).argument }

	it { expect(station.dock(bike)).to eq(bike) }

	it { expect(station.bike).to eq(bike) }
end