#the input I get is in terms of....coordinates are A1, A2

#when getting this input from the user I should change it into the format ["A", 1], ["A", 2]
#That should be what gets input to this method for a validity check
#if the guess is valid then return that it is to the main method to continue into the section
#that then asks for guesses
# class CheckValidity

def adjacent?(array_of_coordinates_for_one_boat)

end


def no_overlap(boat_2, boat_3)
  boat_2.each do |coord|
    new_index = coord.index
    boat_3.include? (boat_2[new_index]) do |coordinate|
      puts coordinate
    end
  end
end

# end

boat_2_units = [[0, 0], [1, 0]]
boat_3_units = [[1, 0], [1, 1], [1, 2]]

no_overlap(boat_2_units, boat_3_units)

#should also be checking the validity of the guesses
# guesses must be included in possible coordinates
#if this is true, then move onto checking if there is a ship at that value
# If so, store a hit at that board coordinates
#else, store a miss at that board coordinates

#then generate the computer guess
#same with computer guess, if hit store on computer board if it was a hit or a miss
#computer generate guess from list of grid positions (a.product(b))
