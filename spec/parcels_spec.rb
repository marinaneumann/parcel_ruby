require 'rspec'
require 'parcels'

describe Parcel do
  it 'is initialized with parcel measurements' do
    test_parcel = Parcel.new(12, 23, 2, 22)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'calculates the volume for the parcel' do
    test_parcel = Parcel.new(12,23,2)
    test_parcel.volume.should eq '552'
  end
end
