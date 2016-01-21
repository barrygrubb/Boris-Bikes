require 'docking_station'

RSpec.describe DockingStation do

  it { expect respond_to(:release_bike) }


  it 'return an instance of Bike' do
    bikes = Bike.new
    subject.dock(bikes)
    expect(subject.release_bike).to be_a(Bike)
	end

	it 'expects bike to respond to working?' do
    bikes = Bike.new
		expect(bikes.working?).to eq(true)
	end

  it 'responds to dock' do
    bikes = Bike.new
    expect(subject.dock(bikes))
  end

  it 'sees a docked bike' do
    bikes = Bike.new
    subject.dock(bikes)
    expect(subject.bike)
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'returns docked_bikes' do
    # docking_full.release_bike
    # @bike = docking_full.dock(bikes)
    bikes = Bike.new
    expect(subject.instance_variable_get(:@bike)).to eql(subject.dock(bikes))
    # print "#{@bike}"
    # print " -->"
    # print "#{docking.dock(bikes)}"
  end

  it 'returns error' do
    bikes = Bike.new
    expect { subject.release_bike }.to raise_error('No bikes available')
  end

  it 'does not accept bike being docked if a bike is already docked' do
    bikes = Bike.new
    subject.dock(bikes)
    expect { subject.dock(bikes) }.to raise_error('Docking station full')
  end
end
