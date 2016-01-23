require 'bike'

describe Bike do
	it { should respond_to(:working?) }

	it 'creates a working bike' do
	expect(subject.instance_variable_get(:@working)).to eq true
	end

	it 'can declare a bike broken' do
	bike = Bike.new
	bike.broken
	expect(bike.instance_variable_get(:@working)).to eq false
	end

end
