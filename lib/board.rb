class Board

  def initialize(num, name)
    @board_size = num
    @column_label = []
    @row_label = []
    @column_letters = ['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I', 'J']
    @board_name = name
    board_lables(num)
    @board = instantiate_empty_board(num)
    @debug = true
  end

  def board_lables(num)
    (0...num).each{|num| @row_label << num}
    (0...num).each do |num|
      @column_label << @column_letters[num]
    end
  end

  def instantiate_empty_board(num)
    board = Array.new(num).map do |row|
      Array.new(num, '~')
    end
    return board
  end

  def place_computer_ships
    puts "PLACING SHIPS"
    place_computer_ship(3)
    # place_computer_ship(2)
  end

  def place_computer_ship(ship_length)
    puts "WOOO #{ship_length}"
    direction = rand(0..1)
    valid_ship_start_points = @board_size - ship_length + 1
    if direction == 0
      #horizontal
      start_column = rand(0...valid_ship_start_points)
      start_row = rand(0...@board_size)
      i = 0
      while i < ship_length do
        update_board(start_row, start_column + i, "S")
        i += 1
      end
    else
      #vertical
      start_column = rand(0...@board_size)
      start_row = rand(0...valid_ship_start_points)
      i = 0
      while i < ship_length do
        update_board(start_row + i, start_column, "S")
        i += 1
      end
    end


  end

  def update_board(x, y, new_value)
    @board[x][y] = new_value
  end

  def output_board
    puts @board_name
    print "\t"
    puts @row_label.join "\t"
    @board.each_with_index do |row, i|
      print @column_label[i]
      print "\t"
      row.each do |num|
        if num == 'S' && !@debug
          num = '~'
        end
        print num + "\t"
      end
      puts
    end
  end

end
#
# board = Board.new(4, "Computer Board")
# board.output_board
# board.update_board(0,0,"S")
# board.output_board
