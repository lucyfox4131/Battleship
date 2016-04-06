def board_layout(num)
  column_letters = ['A', 'B', 'C', 'D', 'E', 'F','G', 'H', 'I', 'J']
  row_label = []
  column_label = []
  (0...num).each{|num| row_label << num}
  (0...num).each do |num|
    column_label << column_letters[num]
  end

  board = Array.new(num, "~").map{ |row| Array.new(num, "~")}
  # row_label = [0..num]
  # column_label = [0..num]
  board[0][0] = "S"

  print "\t"
  print row_label.join "\t"
  puts
  board.each_with_index do |row, i|
    print column_label[i]
    print "\t"
    puts row.join "\t"
  end
end

board_layout(4)
