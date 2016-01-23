require 'van'

describe Van do

  it 'has a van class' do
    expect(subject).to be_a(Van)
  end

  it 'responds to collect_from_dock' do
    expect(subject).to respond_to(:collect_from_dock).with(1).argument
  end

  it 'responds to collect_from_garage' do
    expect(subject).to respond_to(:collect_from_garage).with(1).argument
  end

  it 'responds to deliver_to_dock' do
    expect(subject).to respond_to(:deliver_to_dock).with(1).argument
  end

  it 'responds to deliver_to_garage' do
    expect(subject).to respond_to(:deliver_to_garage).with(1).argument
  end

  it 'has an array for bikes' do
    expect(subject.instance_variable_get(:@bikes)).to be_a(Array)
  end

end
