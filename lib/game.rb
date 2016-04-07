require './lib/board'
require './lib/messages'

class Game

  def initialize
    @column_letters = ['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I', 'J']
    @computer_board = Board.new(4, "Computer Board")
    @user_board = Board.new(4, "User Board")
    @computer_board.place_computer_ships
    @computer_board.output_board
    loop do
        placed_user_ships = @user_board.place_user_ships(get_player_two_ships, get_player_three_ships)
      break if placed_user_ships
    end
  end

  def get_player_two_ships
    message = Messages.new
    message.player_placement
    player_two_ship = gets.chomp.upcase
  end

  def get_player_three_ships
    message = Messages.new
    message.player_three_boat
    player_three_ship = gets.chomp.upcase
  end
end


#must check to see if player choices and computer choices are valid....how do we do that. New class checking each constraint. Probably not...method would make more sense. It could return true or false.
