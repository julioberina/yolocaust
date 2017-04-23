# The GameEngine's function is simply to handle game logic and return stuff
# to the UserInterface class
require_relative "nyan_cat"

module Scene
  TITLE = 1
  MAIN = 3
end

class GameEngine
  attr_reader :writer, :background_image, :background_music, :scene, :frame, :cat

  def initialize
    @background_image = Gosu::Image.new("assets/images/background.jpg", tileable: false)
    @background_music = Gosu::Song.new("assets/audio/hongkong97.wav")
    @writer = Gosu::Font.new(72, name: "assets/fonts/Capture_it.ttf")
    @scene = Scene::TITLE
    @frame = 0

    # Initialize the Nyan Cat
    character_init
  end

  def character_init
    @cat = NyanCat.new
  end

  def update
    # Update game entities
    @frame = (@frame + 1) % 60
    @cat.update if @scene == Scene::MAIN
  end

  def button_up id
    if id == Gosu::KbReturn or id == Gosu::KbEnter
      @scene = Scene::MAIN if @scene == Scene::TITLE
    elsif id == Gosu::KbS or id == Gosu::KbW
      @cat.dy = 0 if @scene == Scene::MAIN
    end
  end

  def button_down id
    if id == Gosu::KbS
      (@cat.dy = 5 unless @cat.dy == 5) if @scene == Scene::MAIN
    elsif id == Gosu::KbW
      (@cat.dy = -5 unless @cat.dy == -5) if @scene == Scene::MAIN
    end
  end
end
