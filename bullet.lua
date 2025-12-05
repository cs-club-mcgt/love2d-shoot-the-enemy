-- TODO: Fix Bullets

Bullet = Object:extend()

function Bullet:new(x, y)    
    self.x = x
    self.y = y
    self.speed = 700
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()
end

function Bullet:update(dt)
    self.y = self.y - self.speed * dt
end

function Bullet:draw()
    love.graphics.rectangle("fill", self.x, self.y, 5, 20)
end