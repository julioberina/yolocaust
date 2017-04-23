require_relative "entity"

class Bullet < Entity
  attr_accessor :orientation

  def initialize orientation, x, y
    @orientation = orientation
    @x = x
    @y = y
    @dx = 0
    @dy = 0
  end

  def update
    @x += @dx
    @y += @dy
  end

  def shoot(charge = 0)
    if @orientation == :right
      @dx = 10
      if charge >= 179
        # Load charged bullet image
      else
        @pic = Gosu::Image.new("assets/images/dabbullet.png")
      end
    elsif @orientation == :left
      @dx = -20
    end
  end

  def shot?
    (@dx == 0) ? false : true
  end
end
