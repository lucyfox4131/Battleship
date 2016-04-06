class Board

def board_layout(num)
  column_letters = ['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I', 'J']
  row_label = []
  column_label = []
  (0...num).each{|num| row_label << num}
  (0...num).each do |num|
    column_label << column_letters[num]
  end

  board = Array.new(num, "~").map{ |row| Array.new(num, "~")}
  #board[0][0] = "S"

  print "\t"
  puts row_label.join "\t"
  board.each_with_index do |row, i|
    print column_label[i]
    print "\t"
    puts row.join "\t"
  end

  def outputBoard
    print "\t"
    puts row_label.join "\t"
    @board.each_with_index do |row, i|
      print column_label[i]
      print "\t"
      puts row.join "\t"
    end
  end
end

end
board_layout(4)
