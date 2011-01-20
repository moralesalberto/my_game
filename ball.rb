class Ball
  def initialize(game_window,speed)
    @y = 0
    @game_window = game_window
    @x = rand(game_window.width)
    @speed = speed
    @icon = Gosu::Image.new(@game_window, "images/ball.png", true)
  end
  
  def update
    if @y > @game_window.height
      @y = 0
      @x = rand(@game_window.width)
    else
      @y = @y + @speed
    end
  end
  
  def draw
    @icon.draw(@x,@y,2)
  end
end