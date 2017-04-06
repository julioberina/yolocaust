# The GameEngine's function is simply to handle game logic and return stuff
# to the UserInterface class

class GameEngine
  attr_reader :writer

  def initialize
    @writer = Gosu::Font.new(72)
  end

  def update
  end
end
