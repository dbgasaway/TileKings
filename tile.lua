--------
-- Tile Code
--
-------
local Tile = {}

Tile.width = 25
Tile.height = 25

local tileTypes = {
    grass = {
        purchaseCost = 0,
        test = function() 
        	print("test") 
    	end,
        red = 0,
        green = 200,
        blue = 20
    },
    shrubs = {
    	purchaseCost = 1,
        red = 0,
        green = 150,
        blue = 0
	},
	woods = {
		purchaseCost = 2,
        red = 60,
        green = 50,
        blue = 40
	}

}

function Tile:show()
    return self.draw()
end

function Tile:new(xCoord, yCoord, type)
    local tile = {}
    tile.type = tileTypes[type]
    if(tile.image ~= nil) then
        tile.draw = display.newImage(tile.image, xCoord * Tile.width, yCoord * tile.height)
    else
        tile.draw = display.newRect(xCoord * Tile.width, yCoord * Tile.height, Tile.width, Tile.height)
        tile.draw:setFillColor(tile.type.red, tile.type.green, tile.type.blue)
        tile.draw:setStrokeColor(0, 0, 0)
    end
    --tile:show()
    return tile
end

function Tile:getType(type)
    local typeO = {}


    return typeO
end

return Tile