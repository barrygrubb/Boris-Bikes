require 'docking_station'

describe DockingStation do

    it { expect respond_to(:release_bike) }

    # let(:bike) { double :bike } <-- Double creation for 'bike'

	  it 'expects bike to respond to working?' do
      # allow(bike).to receive(:working?).and_return(true) <--- Make 'bike' respond to 'working?' method with 'true'
      # bike = double("true", :working? => true) <---- Short-hand for the above. Needs 'working?' to be called on 'bike' variable in test
		  expect(double(:working? => true).working?).to eq(true) # <---- Shortest hand. Eliminates the need for the 'bike' variable.
	  end

    it { expect respond_to(:@bike) }

    it 'returns a docked bike' do
      bike = double(:working? => true) # <---- Rather than the above Shortest hand, we will be calling on 'bike' more than once, so a variable is best.
      expect(subject.dock bike).to include bike
    end

    it {is_expected.to respond_to(:dock).with(1).argument }

    it 'returns an instance variable of a working bike' do
      bike = double(:working? => true)
      subject.dock bike
      expect(subject.instance_variable_get(:@working_bikes)).to include(bike)
    end

    it 'returns an instance variable of a broken bike' do
      bike = double(:working? => false)
      subject.dock bike
      expect(subject.instance_variable_get(:@broken_bikes)).to include(bike)
    end

    it 'returns error' do
      expect{subject.release_bike}.to raise_error('no bikes available')
    end


    it 'returns error' do
      bike = double(:working? => true)
      DockingStation::DEFAULT_CAPACITY.times { subject.dock bike }
      expect{ subject.dock bike }.to raise_error('station is full')
    end

    it 'uses that default' do
      input_capacity = 30
      docking_station = DockingStation.new(input_capacity)
      expect(docking_station.capacity).to eq(input_capacity)
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
end
