require './lib/parcels'

@packages = []

def main_menu
  loop do
    puts "Press 'a' to add a package"
    # puts "Press 'l' to list your packages"
    puts "Press 'c' to show your packages cost to ship"
    puts "Press 'x' to exit"
    main_choice = gets.chomp

    if main_choice =='a'
      add_package
      elsif main_choice == 'l'
      display_packages
    elsif main_choice == 'c'
      shipping_cost
    elsif main_choice == 'x'
      puts "Goodbye!"
      exit
    else
      puts "Sorry, not that wasn't a valid option"
    end
  end
end

def add_package
  puts "Please enter your package weight"
  weight = gets.chomp.to_f

  puts "Please enter your package height"
  height = gets.chomp.to_f

  puts "Please enter your package length"
  length = gets.chomp.to_f

  puts "Please enter your package width"
  width = gets.chomp.to_f

  @packages << Parcel.new(length,width,height,weight)

  puts "Package created:"
  puts "\n"
  puts "weight: " + weight.to_s + "  " + "width: " +
      width.to_s + "  " + "height: " + height.to_s + "  " +  "length: " +
      length.to_s
end

# def display_packages
#   puts @package
#  @package.each do |i|
#     puts "\n"
#     puts "Package created   weight:" + @weight.to_s + "  " + "width:" +
#         @width.to_s + "  " + "height:" + @height.to_s + "  " +  "length:" +
#         @length.to_s
#     puts "\n"
#   end
# end


def shipping_cost
  puts "calculates cost of shipping"
  puts "\n"
   @packages.each do |package|
    cost_to_ship = package.cost_to_ship

     puts "Cost to ship: #{cost_to_ship}"

  puts "\n"
end
  main_menu
end


main_menu
