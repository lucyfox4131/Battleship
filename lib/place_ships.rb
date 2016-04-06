class PlaceShips
  def initialize
    @two_unit_ship = [["A1","A2"],["A2", "A3"],["A4", "A5"],["B1","B2"],["B2","B3"],["B3","B4"],["C1","C2"],["C2","C3"],["C3","C4"],
    ["D1","D2"],["D2","D3"],["D3", "D4"], ["A1","B1"],["B1","C1"],["C1","D1"],["A2","B2"],["B2","C2"],["C2","D2"],
    ["A3","B3"],["B3","C3"], ["C3","D3"],["A4","B4"],["B4", "C4"],["C4","D4"]]
    @three_unit_ship = [['A1','A2','A3'],['A2','A3','A4'],['B1','B2','B3'],['B2','B3','B4'],['C1','C2','C3'],['C2','C3','C4'],
    ['D1','D2','D3'],['D2','D3','D4'],['A1','B1','C1'],['B1','C1','D1'],['A2','B2','C2'],['B2','C2','D2'],['A3','B3','C3'],
    ['B3','C3','D3'],['A4','B4','C4'],['B4','C4','D4']]
  end

  def place_computer_ships
    p two_unit_ship = @two_unit_ship.sample
    p three_unit_ship = @three_unit_ship.sample
  end

end
