
class Input_Validation
  @@column_letters = ['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I', 'J']

  def self.parse_guess_for_coordinate(string)
    puts "user input #{string}"
    coordinate_array = string.chars
    puts "coordinate_array #{coordinate_array}"
    y_location = @@column_letters.find_index(coordinate_array[0])
    puts "y_location#{y_location}"
    if !y_location
      # we didn't find an index of the input letter, invalid
      puts "Invalid Letter"
      return false
    end
    x_location = (coordinate_array[1].to_i)-1
    puts "x_location#{x_location}"
    if x_location > 3 || x_location < 0
      puts "Invalid Number"
      return false
    end
    {:x => x_location, :y => y_location}
  end

  def self.create_coordinate_hash_array(array)
    puts "array #{array}"
    player_coordinate_array = []
    array.each do |location|
      player_coordinate_array << parse_guess_for_coordinate(location)
    end
    puts "SDFLKJADHF"
    puts player_coordinate_array
    player_coordinate_array
  end

  def self.ships_overlap?(two_unit_ship, three_unit_ship)
    result = three_unit_ship & two_unit_ship
    if result.empty?
      return false
    else
      return true
    end
  end
end
