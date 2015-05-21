function widget:GetInfo()
	return {
		name		= "Pause window",
		desc		= "window to see if game is paused",
		author		= "TurBoss",
		date		= "2014-07-11",
		license		= "GNU GPL v2 or later",
		layer		= 0,
		enabled		= true  --  loaded by default?
	}
end

-- INCLUDES
-- CONSTANTS
local DEBUG = true
local spGetGameSpeed = Spring.GetGameSpeed

-- MEMBERS

local Chili
local pauseLabel
local pauseWindow

-- SCRIPT FUNCTIONS

function widget:Initialize()
	if (not WG.Chili) then
		widgetHandler:RemoveWidget()
		return
	end
	
	Chili = WG.Chili
	
	local _, _, pause = spGetGameSpeed()
	if pause then
		CreateWindow()
	end
end

function CreateWindow()
	
	local screen0 = Chili.Screen0
	
	pauseWindow = Chili.Window:New{
		x = '40%',
		y = '40%',
		dockable = true,
		parent = screen0,
		caption = '',
		draggable = true,
		resizable = false,
		dragUseGrip = true,
		clientWidth = 300,
		clientHeight = 100,
		backgroundColor = {0.8,0.8,0.8,0.9},
	}
	
	pauseLabel = Chili.Label:New{
		x = "20%",
		y = "10",
		width="100%";
		height="90%";
		parent = pauseWindow,
		caption = "PAUSE",
		fontsize = 52,
		autosize = false,
		textColor = {1,1,1,1},
	}
end

function DestroyWindow()
	pauseWindow:Dispose()
	pauseWindow = nil
end

function widget:GamePaused()
	local _, _, pause = spGetGameSpeed()
	
	if not pause then
		DestroyWindow()
	elseif pause then
		CreateWindow()
	end
end
