require 'docking_station'
require 'bike'

describe DockingStation do
  subject(:docking_station) {DockingStation.new}
  it 'should instantiate a new docking station' do
    expect(docking_station).to be_instance_of(DockingStation)
  end

  it { should respond_to(:release_bike) }

  it 'release_bike gets a bike from the docking station' do
    expect(docking_station.release_bike).to be_instance_of(Bike)
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks my bike at DockingStation' do
    bike = docking_station.release_bike
    expect(docking_station.dock(bike)).to eq bike
  end

  it 'show the bikes at docking station' do
  bike = docking_station.dock(Bike.new)
  expect(docking_station.bike).to eq bike
  end

end
