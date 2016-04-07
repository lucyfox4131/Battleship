class Board

  def initialize(num, name)
    @column_label = []
    @row_label = []
    @column_letters = ['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I', 'J']
    @board_name = name
    board_lables(num)
    @board = instantiate_empty_board(num)
    @debug = false
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
