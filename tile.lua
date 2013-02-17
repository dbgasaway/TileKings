--------
-- Tile Code
--
-------
local Tile = {}

local tileTypes = {
    grass = {
        purchaseCost = 0,
        test = function() 
        	print("test") 
    	end
    },
    shrubs = {
    	purchaseCost = 1

	},
	woods = {
		purchaseCost = 2
	}

}

function Tile:new(xCoord, yCoord, type)
    local tile = {}
    tile.rect = display.newRect(xCoord, yCoord, 25, 25)

    tile.type = tileTypes[type]


    return tile
end

function Tile:getType(type)
    local typeO = {}


    return typeO
end

return Tile