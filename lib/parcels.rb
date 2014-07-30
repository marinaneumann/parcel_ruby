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
end

#  parcel = Parcel.new(12,23,2,2)

# a = parcel.volume(12,23,2)
# puts "Volume is : #{a}"
