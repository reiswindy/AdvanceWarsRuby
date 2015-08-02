class Tile
  
  attr_accessor :x
  attr_accessor :y
  
  def initialize(type, x, y)
    @attributes = type
    @x = x*Tiles::GLOBAL_TILE_SIZE
    @y = y*Tiles::GLOBAL_TILE_SIZE
  end
  
  def tileset_index
    return @attributes[:tileset_index]
  end
  
end