# The GameEngine's function is simply to handle game logic and return stuff
# to the UserInterface class

module Scene
  TITLE = 1
end

class GameEngine
  attr_reader :writer, :background_image, :background_music, :scene, :frame

  def initialize
    @background_image = Gosu::Image.new("assets/images/background.jpg", tileable: false)
    @background_music = Gosu::Song.new("assets/audio/hongkong97.wav")
    @writer = Gosu::Font.new(72, name: "assets/fonts/Capture_it.ttf")
    @scene = Scene::TITLE
    @frame = 0
  end

  def update
    # Update game entities
    @frame = (@frame + 1) % 60
  end
end
