require './lib/parcels'

def user_menu
  puts "Press 'e' to enter the dimensions of your package:"
  main_prog = gets.chomp
  if main_prog != 'e'
    puts "Not a valid request"
  else
    puts "enter the height of the package:"
    m_height = gets.chomp
    puts "enter the width of the package:"
    m_width = gets.chomp
    puts "enter the length of the package:"
    m_length = gets.chomp
    puts "enter the weight of the package:"
    m_weight = gets.chomp
    puts "enter the name of your package:"
    m_name = gets.chomp
    # my_package = Parcel.new(m_height, m_weight, m_length, m_weight, m_name)
    # puts "Your cost to ship #{my_package.name} is $#{my_package.cost_to_ship}"
    ship_cost(m_height, m_weight, m_length, m_weight, m_name)

  end
end

def ship_cost(height, width, length, weight, name)
  my_package =Parcel.new(height, width, length, weight, name)

  puts "Your cost to ship #{my_package.name} is $#{my_package.cost_to_ship}"
end

user_menu
