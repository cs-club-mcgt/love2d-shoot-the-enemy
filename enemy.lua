Enemy = Object:extend()

function Enemy:new()
    self.image = love.graphics.newImage("young_thug.png")
    self.x = 600
    self.y = 500
    self.direction = -1
    self.speed = 200
end

function Enemy:update(dt)
    self.x = self.x + self.speed * dt * self.direction

    if self.x < 0 then
        self.x = 0
        self.direction = 1
    elseif self.x > love.graphics.getWidth() - (self.image:getWidth() * 0.4) then
        self.x = love.graphics.getWidth() - (self.image:getWidth() * 0.4)
        self.direction = -1
    end

end

function Enemy:draw()
    love.graphics.draw(self.image, self.x, self.y, 0, 0.4, 0.4)
end