require_relative "entity"

class NyanCat < Entity
  def initialize
    @frame = 0
    @pic = []
    1.upto(9).each { |i| @pic << Gosu::Image.new("assets/images/nyancat#{i}.png") }
    @x, @y, @z = [0, 0, 0]
    @dx, @dy = [0, 0]
    @scale_x = 3.5
    @scale_y = 3
    @bullets = []
  end

  def update
    @frame = (@frame + 1) % 32 # change cat picture
    @x += @dx
    @y += @dy
    @dy = 0 if @y <= 0 or @y >= 550
    @dx = 0 if @x <= 0 or @x >= 200

    # Update bullets
    unless @bullets.empty?
      @bullets.each do |bullet|
        bullet.shoot unless bullet.shot?
        bullet.update 
      end
      if @bullets.first.x > 800 then @bullets.shift end
    end
  end
end
