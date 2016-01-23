require 'docking_station'

describe DockingStation do

    it { expect respond_to(:release_bike) }

    docking = DockingStation.new

   #  it 'return an instance of Bike' do
   #  expect(subject.release_bike).to be_a(Bike)
	  # end



	  bike = Bike.new

	  it 'expects bike to respond to working?' do
		expect(bike.working?).to eq(true)
	  end

    it { expect respond_to(:@bike) }

    it 'returns a docked bike' do
    expect(subject.dock(bike)).to include bike
    end

    # it do print "#{(subject.dock(bike))}" end

    it {is_expected.to respond_to(:dock).with(1).argument } 

    it 'returns an instance variable of a bike' do
        station = DockingStation.new 
        station.dock(Bike.new)
    expect(station.instance_variable_get(:@bikes)).to include(Bike) 
    end

    # it do print "#{(docking.bike)}" end

    describe '#release_bike' do
      it 'returns error' do
      expect{subject.release_bike}.to raise_error('no bikes available')
    end


    describe '#dock_bikes' do
       it 'returns error' do
         DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
       expect{subject.dock(bike)}.to raise_error('station is full')
    end

    # it {is_expected.to respond_to(DockingStation.new).with(1).argument}

  #   it 'Responds to an argument' do
  #   expect(DockingStation).to respond_to(:new).with(1).argument
  # end

    context 'when a default is specified' do
        it 'uses that default' do
          input_capacity = 30  # we are setting at a number NOT = the default number, to test code
          docking_station = DockingStation.new(input_capacity)
          expect(docking_station.capacity).to eq(input_capacity)
        end
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'does not release broken bikes' do
      bike = Bike.new
      bike.broken
      subject.dock(bike)
      expect{(subject.release_bike)}.to raise_error('no working bike')
    end
    end
    end
end


