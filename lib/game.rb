require './place_ships'
require './messages'

class Game

  def initialize
    # computer_ships = PlaceShips.new
    # computer_ships.place_computer_ships
    # @column_letters = ['A', 'B', 'C', 'D']
    # board_layout(4)
    generate_computer_ships
  end

  def generate_computer_ships
    new_ships = PlaceShips.new
    comp_two_unit_ship = new_ships.two
    comp_three_unit_ship = new_ships.three
    puts "Computer generated two unit ship is #{comp_two_unit_ship}"
    puts "Computer generated three unit ship is #{comp_three_unit_ship}"
    getPlayerGuess
  end

  def getPlayerGuess
    message = Messages.new
    message.player_placement
    player_choice = gets.chomp.downcase
    puts "THIS WAS YOUR GUESS #{player_choice}"
  end

end


#must check to see if player choices and computer choices are valid....how do we do that. New class checking each constraint. Probably not...method would make more sense. It could return true or false.
