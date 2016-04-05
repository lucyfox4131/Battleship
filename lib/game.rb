class Game

  def initialize
    generate_new_board
    puts "WOOHOO we are playing!"
  end

  def generate_new_board
    game = Generate.new
  end

  def player_ship_placement
    message = Messages.new
    message.player_ship_placement_instructions
    two_unit_ship = gets.chomp
    if valid
      #ask player for three_unit_ship
    end
  end

end


#must check to see if player choices and computer choices are valid....how do we do that. New class checking each constraint. Probably not...method would make more sense. It could return true or false.
