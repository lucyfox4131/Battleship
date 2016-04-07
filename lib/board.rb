require './lib/ship'

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
    destroyer = Ship.new(place_computer_ship(3), 3, "Destroyer")
    output_board
    ship_location = nil
    loop do
      ship_location = place_computer_ship(2)
        break if ship_location
    end
    minisub = Ship.new(ship_location, 2, "Minisub")
  end

  def place_computer_ship(ship_length)
    puts "WOOO #{ship_length}"
    ship_array = []
    direction = rand(0..1)
    valid_ship_start_points = @board_size - ship_length + 1
    if direction == 0
      #horizontal
      start_column = rand(0...valid_ship_start_points)
      start_row = rand(0...@board_size)
      i = 0
      while i < ship_length do
        if( @board[start_row][start_column+i] == 'S' )
          return false
        end
        ship_array << {:y => start_row, :x => (start_column +i)}
        i += 1
      end
      ship_array.each do |location|
        update_board(location[:x], location[:y], "S")
      end
      p ship_array
      return ship_array
    else
      #vertical
      start_column = rand(0...@board_size)
      start_row = rand(0...valid_ship_start_points)
      i = 0
      while i < ship_length do
        if( @board[start_row][start_column+i] == 'S' )
          return false
        end
        ship_array << {:y => (start_row + i), :x => start_column}
        i += 1
      end
      ship_array.each do |location|
        update_board(location[:x], location[:y], "S")
      end
      p ship_array
      return ship_array
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
