----------------------------------------------------------------------------------
--
-- menu.lua
--
----------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()

local tile = require("tile")

----------------------
-- PHYSICS CREATION --
----------------------

---------------------
-- DISPLAY OBJECTS --
---------------------

function scene:createScene( event )
	local group = self.view
	storyboard.removeAll()
end

function scene:enterScene( event )
	local group = self.view
	
	---------------
	-- VARIABLES --
	---------------
	
	
	--------------------
	-- SHEET CREATION --
	--------------------	
	
	
	-----------------------------
	-- DISPLAY OBJECT CREATION --
	-----------------------------



	local tile = {}

	tile.newTile = function(xCoord, yCoord, type)
		tile = display.newRect(xCoord, yCoord, 35, 35)

		return tile
	end

	local newTile = tile.newTile(50, 50, "grass")
	



	----------------------
	-- OBJECT PLACEMENT --
	----------------------
	
	--------------------------------
	-- INSERT OBJECTS INTO GROUPS --
	--------------------------------
	
	----------------------
	-- PHYSICS CREATION --
	----------------------
	
	-----------------------
	-- FUNCTION CREATION --
	-----------------------

	---------------------
	-- OBJECT FEATURES --
	---------------------
	
	--------------------------
	-- LISTENERS AND TIMERS --
	--------------------------

	-----------------
	-- MEMORY TEST --
	-----------------

end

function scene:exitScene( event )
	local group = self.view
	
	-- CANCEL ALL TIMERS AND TRANSITIONS --
	cancelAllTransitions();
	cancelAllTimers();
end

function scene:destroyScene( event )
	local group = self.view
end

scene:addEventListener( "createScene", scene )

scene:addEventListener( "enterScene", scene )

scene:addEventListener( "exitScene", scene )

scene:addEventListener( "destroyScene", scene )

---------------------------------------------------------------------------------

return scene


