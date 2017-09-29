
require 'bike'

describe Bike do
  subject(:bike) {Bike.new}

  it { should respond_to(:working?) }

  it 'is of class Bike' do
    expect(bike).to be_instance_of Bike
  end

  it 'is working' do
    expect(bike).to be_working 
  end


end
