# The UserInterface class is responsible for displaying things to the screen

require_relative "game_engine.rb"

class UserInterface < Gosu::Window
  def initialize
    super 800, 600
    self.caption = "Yolocaust"
    @engine = GameEngine.new
  end

  # Let GameEngine run game logic
  def update
    @engine.update
  end

  def draw
    @engine.background_image.draw 0, 0, 0, 0.444, 0.435
    @engine.writer.draw "Press Enter to Play", 145, 390, 0, 0.75, 0.5, Gosu::Color::WHITE
  end
end
