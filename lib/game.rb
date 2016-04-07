require './lib/board'
require './lib/messages'

class Game

  def initialize
    @computer_board = Board.new(4, "Computer Board")
    @user_board = Board.new(4, "User Board")
    @computer_board.output_board
    @user_board.output_board
  end
  #
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
