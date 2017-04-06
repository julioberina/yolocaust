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
    @engine.writer.draw "Yolocaust", 245, 10, 0
  end
end
