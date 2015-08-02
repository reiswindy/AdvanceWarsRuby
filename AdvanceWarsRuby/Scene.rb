#Faltan las unidades!
require_relative 'Background'
require_relative 'Cursor'
require_relative 'Player'
require_relative 'Soldier'

class Scene
  
  attr_accessor :window
  attr_accessor :background
  
  def initialize(window)
    @window = window
    @background = Background.new("Maps/TestMap", self)
    @cursor = Cursor.new(@window, @background)
    @units = Array.new
  end
  
  def update
    @background.update
    @cursor.update
  end
  
  def button_down(id)
    case id
    when Gosu::KbA
      @units.push(Soldier.new(Player::PLAYER1, @cursor.current_tile, @window))
    when Gosu::KbS
      @units.push(Tank.new(Player::PLAYER1, @cursor.current_tile, @window))      
    end
    @cursor.button_down(id)
  end
  
  def draw
    @units.each do |unit|
      unit.draw
    end
    @background.draw
    @cursor.draw
  end
  
end