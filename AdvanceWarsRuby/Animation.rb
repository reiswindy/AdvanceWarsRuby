class Animation
  def initialize(window, file, width, height, tileable)
    @frames = Gosu::Image::load_tiles(window, file, width, height, tileable)
    @current = @frames[0]
  end
  
  def draw(x, y)
    @current = @frames[Gosu::milliseconds / 200 % @frames.size]
    @current.draw(x, y, 2, 1, 1)
  end 
end