require 'van'

describe Van do

  it 'has a van class' do
    expect(subject).to be_a(Van)
  end

  it 'responds to collect' do
    expect(subject).to respond_to(:collect).with(1).argument
  end

  it 'has an array for bikes' do
    expect(subject.instance_variable_get(:@bikes)).to be_a(Array)
  end

end
