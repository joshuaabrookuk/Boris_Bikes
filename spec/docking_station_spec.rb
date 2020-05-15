require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'should release a working bike' do
    expect(subject.release_bike.working?).to eq true
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
end 
