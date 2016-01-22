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
    expect(subject.dock(bike)).to eq bike
    end

    # it do print "#{(subject.dock(bike))}" end

    it {is_expected.to respond_to(:dock).with(1).argument }

    it 'returns an instance variable' do
    expect(subject.instance_variable_get(:@bike)) == (subject.dock(Bike.new))
    end

    # it do print "#{(docking.bike)}" end

    describe '#release_bike' do
      it 'returns error' do
      expect{subject.release_bike}.to raise_error('no bikes available')
    end

  # def release_bike
  #   fail 'no bikes available' unless @bike
  #   @bike
  # end

    # it 'if no bikes, do not return a bike' do
    #   expect(subject.release_bike).to not_be_a(Bike)
    # end
    end
end


