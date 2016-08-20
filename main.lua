  -- Define player
  player =
{
  x = 25,
  y = 25,
  y_min = 25,
  y_max = 550,
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
  if love.keyboard.isDown('a') and self.y > self.y_min then
    self.y = self.y - 1
  elseif love.keyboard.isDown('z') and self.y < self.y_max then
    self.y = self.y + 1
  end
  
end


function love.load(arg)
missle = {}
missles = {}
enemy = {}
enemies = {} 
end



function love.update()
  if love.keyboard.isDown('escape') then
    love.event.quit()
  end
  
  player:update()
  
end

function love.draw()
  player:draw()
end
