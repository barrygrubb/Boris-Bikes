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
end




