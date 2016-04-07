require './lib/board'
require './lib/messages'

class Game

  def initialize
    @column_letters = ['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I', 'J']
    @computer_board = Board.new(4, "Computer Board")
    @user_board = Board.new(4, "User Board")
    @computer_board.place_computer_ships
    @computer_board.output_board
    get_player_ships
  end

  def get_player_ships
    message = Messages.new
    message.player_placement
    player_choice = gets.chomp.upcase.split
    create_coordinate_hash_array(player_choice)
  end

  def parse_guess_for_coordinate(string)
    coordinate_array = string.chars
    x_location = @column_letters.find_index(coordinate_array[0])
    y_location = (coordinate_array[1].to_i)-1 
    {:x => x_location, :y => y_location}
  end

  def create_coordinate_hash_array(array)
    player_coordinate_array = []
    array.each do |location|
      player_coordinate_array << parse_guess_for_coordinate(location)
    end
    puts "SDFLKJADHF"
    puts player_coordinate_array
    player_coordinate_array
  end



  # def getPlayerGuess
  #   message = Messages.new
  #   message.player_placement
  #   player_choice = gets.chomp.downcase
  #   loop do
  #     puts "THIS WAS YOUR GUESS #{player_choice}"
  #     break if player_choice == 'q'
  #   end


end


#must check to see if player choices and computer choices are valid....how do we do that. New class checking each constraint. Probably not...method would make more sense. It could return true or false.
