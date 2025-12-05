Player = Object:extend()

function Player:new()
    self.image = love.graphics.newImage("skull.png")
    self.x = 400
    self.y = 50
    self.speed = 500
    self.width = self.image:getWidth()
end

function Player:update(dt)
    if love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    elseif love.keyboard.isDown("left") then
        self.x = self.x - self.speed * dt
    end

    -- if self.x < 0 then
    --     self.x = 0
    -- elseif self.x + self.width > love.graphics.getWidth() then
    --     self.x = love.graphics.getWidth() - self.width
    -- end

end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y, 0, 0.5, 0.5)
end

function Player:keypressed(key)
    if key == "space" then
        table.insert(listOfBullets, Bullet(self.x + self.y))
    end
end