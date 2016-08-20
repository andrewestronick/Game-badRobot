  -- Define player
  player =
{
  x = 25,
  y = 25,
  y_min = 25,
  y_max = 575,
  frame = 1,
  frames =
    {
      love.graphics.newImage('images/player01.png'),
      love.graphics.newImage('images/player02.png')
    },
}

function player:draw()
  love.graphics.draw(self.frames[self.frame], self.x, self.y)
end

function player:update(dt)
  if self.frame < #self.frames then
    self.frame = self.frame + 1
  else
    self.frame = 1
  end
end


function love.load(arg)
  


missle = {}
missles = {}
enemy = {}
enemies = {} 
end
























function love.draw()
  player:draw()
end

function love.update()
  player:update()
end

