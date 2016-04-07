def place_user_ship(player_hash_array,ship_length, direction)

ship_array = []
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
end
