class Messages

def welcome
  puts "Welcome to BATTLESHIP!"
end

def menu_options
  puts "Would you like to (p)lay, read the (i)nstructions or (q)uit?"
end

def instruct
  puts "The computer will randomly place a 2-unit and 3-unit boat on a 4x4 grid. Then you will do the same. On your turn, you will guess the row and column at which you believe the computer has placed their ships. If you guess correctly, the board will display a hit (H). If you guess incorrectly the board will display a miss (M). If you hit each spot of the ship then the ship has been sunk. Once you sink all the ships, you win the game!"
end

def player_placement
  puts "I have laid out my ships on the grid. You now need to layout your ships. The first is two units long and the second is three units long. The grid has A1 at the top left and D4 at the bottom right. Enter the squares for the two-unit ship: "
end

def player_three_boat
  print "Now we need your three unit long boat. Please place it keeping in mind it cannot overlap with your two unit ship."
end

end
