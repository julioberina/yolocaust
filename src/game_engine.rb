# The GameEngine's function is simply to handle game logic and return stuff
# to the UserInterface class

class GameEngine
  attr_reader :writer, :background_image, :background_music

  def initialize
    @background_image = Gosu::Image.new("assets/images/background.jpg", tileable: false)
    @background_music = Gosu::Song.new("assets/audio/hongkong97.wav")
    @writer = Gosu::Font.new(72, name: "assets/fonts/Capture_it.ttf")
  end

  def update
    # Update game entities
  end
end
