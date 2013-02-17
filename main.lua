----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local Tile = require "tile"

-- MEMORY MONITOR --
local monitorMem = function()
	collectgarbage()
    print( "MemUsage: " .. collectgarbage("count") )

   	local textMem = system.getInfo( "textureMemoryUsed" ) / 1000000
    print( "TexMem:   " .. textMem )
end

--Runtime:addEventListener( "enterFrame", monitorMem )

-- TRANSITION PAUSING --
tm = require("transitionManager")
tm = tm.new()

-- MUSIC LOADING --

-- GAME TO GAME SAVING --
ego = require("ego");

score = {};

local checkScores = function()
	for i = 1, 2 do
    	score[i] = ego.loadFile ("socre["..i.."].txt")
    	if (score[i] == "empty") then
    		score[i] = 0;
    		ego.saveFile("score["..i.."].txt", score[i])
    	end 
    end
end

checkScores()

-- TIMERS AND TRANSITIONS --
timerStash = {}
transitionStash = {}

function cancelAllTimers()
	for i = 1, #timerStash do
    	timer.cancel(timerStash[i]);
    end
    
    timerStash = nil
    timerStash = {}
end

function cancelAllTransitions()
	for i = 1, #transitionStash do
    	transition.cancel(transitionStash[i]);
    end
	
    transitionStash = nil
    transitionStash = {}
end

-- REMOVE STATUS BAR --
display.setStatusBar( display.HiddenStatusBar )

-- BEGIN STORYBOARD --
local storyboard = require "storyboard"

-- load scenetemplate.lua
--storyboard.gotoScene( "menu" )



local newTile = Tile:new(25, 25, "woods")

print(newTile.type.purchaseCost)

