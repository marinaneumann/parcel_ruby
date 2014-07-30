class Parcel

  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

   def volume
    # length*width*height
    @length * @width* @height
   end

  def cost_to_ship
    if 0 < @weight && @weight < 1.0
        price_per_pound = 5.00
    elsif 1.0 < @weight && @weight < 3.0
       price_per_pound = 3.00
    elsif 3.0 < @weight && @weight < 10.0
       price_per_pound = 2.00
    else
      price_per_pound = 0.00
    end

    @weight * price_per_pound
  end
end

# parcel = Parcel.new(12,23,2,2)

# a = parcel.volume(12,23,2)
# puts "Volume is : #{a}"
# b = parcel.cost_to_ship(0.75)
# puts "Cost to ship is : #{b}"
