require_relative 'Direction'

class Unit
  attr_accessor :owner
  attr_accessor :active
  attr_accessor :tile
  
  WIDTH  = 16
  HEIGHT = 16
  
  def initialize(owner, tile, anim)
    @owner = owner
    @active = false
    @tile = tile
    @animations = Array.new
    anim.each do |a|
      @animations.push(a)
    end
    @current_anim = @animations[Direction::None]
  end
  
  def draw
    @current_anim.draw(@tile.x, @tile.y)
  end
  
end