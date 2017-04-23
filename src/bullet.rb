require_relative "entity"

class Bullet < Entity
  attr_accessor :orientation

  def initialize orientation, x, y
    @orientation = orientation
    @x = x
    @y = y
    @dx = 0
    @dy = 0
    @pic = Gosu::Image.new("assets/images/dabbullet.png")
  end

  def update
    @x += @dx
    @y += @dy
  end

  def shoot
    if @orientation == :right
      @dx = 10
    elsif @orientation == :left
      @dx = -10
    end
  end

  def shot?
    (@dx == 0) ? false : true
  end
end
