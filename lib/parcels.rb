class Parcel
  @volume = []
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

   def volume(length,width,height)
    # length*width*height
    @volume << @length*@width*@height

   end
end
