require 'rubygems'
require 'gosu'

require_relative 'Scene'

class Game < Gosu::Window
  def initialize
    super(640, 480, false)
    self.caption = "Wars"
    
    @scene = Scene.new(self)
  end
  
  def update
    @scene.update
  end
  
  def button_down(id)
    @scene.button_down(id)
  end
  
  def draw
    @scene.draw
  end
end

Game.new.show