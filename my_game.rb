require 'rubygems'
require 'gosu'
require 'player'
require 'ball' 

class MyGame < Gosu::Window
  
  def initialize
    super(1000,1000,false)
    @player1 = Player.new(self)
    @balls = 3.times.map {|count| Ball.new(self,5+count)}
  end
  
  def update
    if button_down? Gosu::Button::KbLeft
      @player1.move_left
    end
    
    if button_down? Gosu::Button::KbRight
      @player1.move_right
    end
    
    if button_down? Gosu::Button::KbDown
      @player1.move_down
    end
    
    if button_down? Gosu::Button::KbUp
      @player1.move_up
    end
    
    @balls.each {|ball| ball.update}
  end
  
  def draw
    @player1.draw
    @balls.each {|ball| ball.draw}
  end
  
end

window = MyGame.new
window.show