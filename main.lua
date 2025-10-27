function love.load()
   
 -- Initialize player properties and background
 player = {}
 player.x = 400
 player.y = 300
 player.speed = 200
 player.sprite = love.graphics.newImage('Sprites/Stupid Ass Dog.png')
 background = love.graphics.newImage('Sprites/GrassBG.png')
 player.sprite:setFilter("nearest", "nearest")

 -- Set the filter for the background
 background:setFilter("nearest", "nearest") 
 player.width = 500
 player.height = 500

 -- Get the dimensions of the window and background
 windowWidth, windowHeight = love.graphics.getDimensions()
    bgWidth = background:getWidth()
    bgHeight = background:getHeight()

 --Calculate the scale factors for the background
 bgScaleX = windowWidth / bgWidth
 bgScaleY = windowHeight / bgHeight

end

-- Update player position based on keyboard input
function love.update(dt)
    if love.keyboard.isDown("right") then
    player.x =player.x + player.speed * dt
    elseif love.keyboard.isDown("left") then
        player.x =player.x - player.speed * dt
    elseif love.keyboard.isDown("up") then
        player.y =player.y - player.speed * dt
    elseif love.keyboard.isDown("down") then
        player.y =player.y + player.speed * dt
    end
end

-- Draw the background and player sprite
function love.draw()
 love.graphics.draw(background, 0, 0, 0, bgScaleX, bgScaleY)
 love.graphics.draw(player.sprite, player.x, player.y)
end