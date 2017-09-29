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


end
