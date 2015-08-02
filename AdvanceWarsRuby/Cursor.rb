require_relative 'ZOrder'
require_relative 'Direction'

class Cursor
  
  attr_accessor :current_tile
  
  def initialize(window, background)
    @mapa = background.map
    @cursor_img = Gosu::Image.load_tiles(window, "Cursor.png", 16, 16, true)
    @x = 0
    @y = 0
    @current_tile = @mapa[@y][@x]
    @move_dir = Direction::None
  end
  
  def update
  end
  
  def button_down(id)
    case id
    when Gosu::KbLeft
      unless @x == 0
        @x = @x - 1
      end
    when Gosu::KbRight
      unless @x == 39
        @x = @x + 1
      end
    when Gosu::KbUp
      unless @y == 0
        @y = @y - 1
      end
    when Gosu::KbDown
      unless @y == 29
        @y = @y + 1
      end
    end
    @current_tile = @mapa[@y][@x]
  end
  
  def draw
    @cursor_img[0].draw(@current_tile.x, @current_tile.y, ZOrder::UI)
  end
  
end