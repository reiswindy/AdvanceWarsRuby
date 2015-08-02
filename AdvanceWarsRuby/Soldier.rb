require_relative 'Animation'
require_relative 'Tiles'
require_relative 'Unit'

class Soldier < Unit
  
    UP_ANIM     = "img/BM/up_anim.png"
    DOWN_ANIM   = "img/BM/down_anim.png"
    LEFT_ANIM   = "img/BM/left_anim.png"
    RIGHT_ANIM  = "img/BM/right_anim.png"
    STAND_ANIM  = "img/BM/stand_anim.png"
  
  def initialize(owner, tile, window)
    soldier_anim = [Animation.new(window, LEFT_ANIM , 16, 16, true), 
                    Animation.new(window, RIGHT_ANIM, 16, 16, true), 
                    Animation.new(window, UP_ANIM   , 16, 16, true), 
                    Animation.new(window, DOWN_ANIM , 16, 16, true),
                    Animation.new(window, STAND_ANIM, 16, 16, true)]
    super(owner, tile, soldier_anim)
    
    @terrains = [Tiles::Plain, Tiles::Mountain]
  end
  
  def update 
  end
  
  def draw
    super()
  end
  
end