class Ship

  def initialize(location_coordinates,ship_length,name)
    @location_coordinates = location_coordinates
    @ship_length = ship_length
    @ship_name = name
  end

  def is_sunk?(game_board)
    @location_coordinates.each do |location|
      if game_board[location.x][location.y] == 'S'
        return false
      end
    end
    true
  end

end
