require "minitest/autorun"
require "minitest/pride"
require "./lib/place_ships"

class PlaceShipsTest < Minitest::Test

  def setup
    @new_ships = PlaceShips.new
  end

  def test_if_generating_two_unit_ship_works
    two_unit_ship = @new_ships.two
    assert_equal 2, two_unit_ship.count
  end

  def test_if_generating_three_unit_ship_works
    three_unit_ship = @new_ships.three
    assert_equal 3, three_unit_ship.count
  end

  def test_if_comp_overlap_works_correctly_when_overlap_exists
    result = @new_ships.check_if_ships_overlap?(["A1", 'A2'], ['A1','A2','A3'])
    assert_equal false, result
  end

  def test_if_comp_overlap_works_correctly_when_no_overlap
    result = @new_ships.check_if_ships_overlap?(['A1', 'A2'],['B1', 'B2', 'B3'])
    assert_equal true, result
  end



end
