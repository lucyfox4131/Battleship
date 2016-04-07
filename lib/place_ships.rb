class PlaceShips
  attr_reader :two, :three

  def initialize
    @two_unit_ship = [["A1","A2"],["A2", "A3"],["A4", "A5"],["B1","B2"],["B2","B3"],["B3","B4"],["C1","C2"],["C2","C3"],["C3","C4"],
    ["D1","D2"],["D2","D3"],["D3", "D4"], ["A1","B1"],["B1","C1"],["C1","D1"],["A2","B2"],["B2","C2"],["C2","D2"],
    ["A3","B3"],["B3","C3"], ["C3","D3"],["A4","B4"],["B4", "C4"],["C4","D4"]]
    @three_unit_ship = [['A1','A2','A3'],['A2','A3','A4'],['B1','B2','B3'],['B2','B3','B4'],['C1','C2','C3'],['C2','C3','C4'],
    ['D1','D2','D3'],['D2','D3','D4'],['A1','B1','C1'],['B1','C1','D1'],['A2','B2','C2'],['B2','C2','D2'],['A3','B3','C3'],
    ['B3','C3','D3'],['A4','B4','C4'],['B4','C4','D4']]
    place_computer_ships
    @two
    @three
  end

  def place_computer_ships
    puts 'HEYYY DOES THIS WORK'
    loop do
      @two = @two_unit_ship.sample
      @three = @three_unit_ship.sample
      break if check_if_ships_overlap?(@two, @three)
    end
  end

  def check_if_ships_overlap?(two_unit_ship, three_unit_ship)
    # two = two_unit_ship.split
    # three = three_unit_ship.split
    result = three & two
    if result.empty?
      return true
    else
      return false
    end
  end

  def check_if_player_ships_overlap?(two_unit_ship, three_unit_ship)
    two = two_unit_ship.split
    three = three_unit_ship.split
    result = three & two
    if result.empty?
      return true
    else
      return false
    end
  end



  def check_if_player_two_ship_works(player_ship)
    player_ship_formated = player_ship.split
    @two_unit_ship.include? (player_ship_formated)
  end

  def check_if_player_three_ship_works(player_ship)
    player_ship_formated = player_ship.split
    @three_unit_ship.include? (player_ship_formated)
  end

end


game = PlaceShips.new
puts game.check_if_player_two_ship_works("A1 A2")
puts game.check_if_player_three_ship_works("A1 A2 A3")
puts game.check_if_ships_overlap?("A1 A2", "A1 A2 A3")
puts game.two
puts game.three
