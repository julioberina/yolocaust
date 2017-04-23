require_relative "character"

class NyanCat < Character
  attr_reader :frame, :pic

  def initialize
    @frame = 0
    @pic = []
    1.upto(9).each { |i| @pic << Gosu::Image.new("assets/images/nyancat#{i}.png") }
    @x, @y, @z = [0, 0, 0]
    @dx, @dy = [0, 0]
    @scale_x = 3.5
    @scale_y = 3
  end

  def update
    @frame = (@frame + 1) % 32 # change cat picture
    @x += @dx
    @y += @dy
    @dy = 0 if @y <= 0 or @y >= 550
    @dx = 0 if @x <= 0 or @x >= 200
  end
end
