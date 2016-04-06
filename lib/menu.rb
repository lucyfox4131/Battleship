require "./messages"
require "./game"

class Menu

def initialize
  run
  menu
end

def run
  message = Messages.new
  message.welcome
end

def menu
  loop do
    message = Messages.new
    message.menu_options
    player_choice = gets.chomp.downcase
    if player_choice == 'p'
      play
    elsif player_choice == 'i'
      instructions
    end
    break if player_choice == 'q'
  end
  exit
end

def instructions
  message = Messages.new
  message.instruct
end

def play
  game = Game.new
end

end
