require 'rspec'
require 'parcels'

describe Parcel do
  it 'is initialized with parcel measurements' do
    test_parcel = Parcel.new(12, 23, 2, 0.75)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'calculates the volume for the parcel' do
    test_parcel = Parcel.new(12,23,2,0.75)
    test_parcel.volume.should eq 552
  end

  it 'calculates cost_to_ship based on formula'do
    test_parcel = Parcel.new(12,23,2,0.75)
    test_parcel.cost_to_ship.should eq 3.75
  end
end


# 1)Create a Parcel class.
# 2)You should be able to create a new parcel
#   and specify the dimensions and weight in the arguments.
# 3)When you call volume on an instance, it should return
#   the product of the sides.
# 4)When you call the cost_to_ship method on your parcel,
#   return a cost based on a formula you make up.
# 5)Build a program that lets users calculate shipping costs.

# formula
# if 0<parcel.weight<1.0    price_per_pound=5.00
# if 1.0<pacel.weight<3.0   price_per_pound=3.00
# if 3.0<pacel.weight<10.0   price_per_pound=2.00


