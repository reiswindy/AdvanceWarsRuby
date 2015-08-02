require_relative 'ZOrder'
require_relative 'Tiles'
require_relative 'Tile'

class Background
  
  attr_reader :map
  attr_reader :map_width
  attr_reader :map_height
  
  
  def initialize(filename, scene)
    @scene = scene
    @tileset = Gosu::Image.load_tiles(@scene.window, "awdstileset.png", 16, 16, true)
    raw_map = File.readlines(filename).map { |line| line.chomp }
    @map_height = raw_map.size
    @map_width = raw_map[0].size
    
    @map = Array.new(@map_height) do |y|
      Array.new(@map_width) do |x|
        case raw_map[y][x, 1]
        when '-'
          Tile.new(Tiles::Plain, x, y)
        when 'm'
          Tile.new(Tiles::Mountain, x, y)
        when 'w'
          Tile.new(Tiles::Water, x, y)
        else
          nil
        end
      end
    end
  end
  
  def update
  end
  
  def draw
    @map_height.times do |y|
      @map_width.times do |x|
        tile = @map[y][x]
        if tile
          @tileset[tile.tileset_index].draw(tile.x, tile.y, ZOrder::Background)
        end
      end
    end
  end
  
end