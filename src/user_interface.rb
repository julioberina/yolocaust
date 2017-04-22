# The UserInterface class is responsible for displaying things to the screen

require_relative "game_engine.rb"

class UserInterface < Gosu::Window
  def initialize
    super 800, 600
    self.caption = "Yolocaust"
    @engine = GameEngine.new
    @engine.background_music.play true
  end

  # Let GameEngine run game logic
  def update
    @engine.update
  end

  def draw
    case @engine.scene
    when Scene::TITLE
      title_screen
    end
  end

  private
  # Methods that draw specific entities to screen based on the scene

  def title_screen
    @engine.background_image.draw 0, 0, 0, 0.444, 0.435

    # blinking effect
    if @engine.frame < 30
      @engine.writer.draw "Press Enter to Play", 155, 390, 0, 0.75, 0.5, Gosu::Color::WHITE
    end
  end


end
