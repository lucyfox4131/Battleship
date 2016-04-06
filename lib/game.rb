class Game

  def initialize
    @column_letters = ['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I', 'J']
    board_layout(4)
  end

  # Generate computer board
  # Generate computer ships
  # Get user ships/Create user board
  #setup computer guess system and guess checker
  #setup user guess system and guess checker
  #win sequence
  #lose sequence
  def board_layout(num = @num)
    @num = num
    puts "This is how the board looks woohooo!"
    row_label = []
    column_label = []
    (0...num).each{|num| row_label << num}
    (0...num).each do |num|
      column_label << @column_letters[num]
    end

    board = Array.new(num, '~').map{ |row| Array.new(num, '~')}

    # maybe call method update board? With guess/hit/etc....
    board[1][0] = "S"

    print "\t"
    puts row_label.join "\t"
    board.each_with_index do |row, i|
      print column_label[i]
      print "\t"
      puts row.join "\t"
    end
    board
  end

  def getPlayerGuess
    player_choice = gets.chomp.downcase
    # ex a1 b2 c1
    # validate this cordinate
      # validate it by checking
  end

  # def generate_new_board
  #   game = Generate.new
  # end
  #
  # def player_ship_placement
  #   message = Messages.new
  #   message.player_ship_placement_instructions
  #   two_unit_ship = gets.chomp
  #   if valid
  #     #ask player for three_unit_ship
  #   end
  # end

end


#must check to see if player choices and computer choices are valid....how do we do that. New class checking each constraint. Probably not...method would make more sense. It could return true or false.
