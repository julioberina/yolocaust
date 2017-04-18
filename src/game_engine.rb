# The GameEngine's function is simply to handle game logic and return stuff
# to the UserInterface class

class GameEngine
  attr_reader :writer, :background_image

  def initialize
    @background_image = Gosu::Image.new("assets/images/background.jpg", tileable: false)
    @writer = Gosu::Font.new(72)
  end

  def update
    # Update game entities
  end
end
