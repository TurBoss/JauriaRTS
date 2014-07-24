function widget:GetInfo()
	return {
		name    = 'end_window',
		desc    = 'Victory or loose :D',
		author  = 'turboss',
		date    = '18-07-2014',
		license = 'GNU GPL v2 or later',
		layer   = 10,
		enabled = true
	}
end


local speccing = Spring.IsGameOver() or Spring.GetSpectatingState()

local Chili
local Button

local caption = ""

local screenWidth,screenHeight = Spring.GetWindowGeometry()

function widget:Initialize()
	Spring.SendCommands('endgraph 0')
	Chili = WG.Chili
	Button = Chili.Button
	screen0 = Chili.Screen0
end

function CreateWindow(winner)
	Spring.Echo(Spring.GetMyTeamID().."-"..winner)
	
	if winner == tostring(Spring.GetMyTeamID()) then
		caption = "Victory"
	elseif winner ~= tostring(Spring.GetMyTeamID()) then
		caption = "Loose"
	end
	
	Window = Chili.Window:New{
		x = "40%",
		y = "40%",
		dockable = false,
		parent = screen0,
		caption = '',
		draggable = false,
		resizable = false,
		dragUseGrip = false,
		clientWidth = 300,
		clientHeight = 100,
		backgroundColor = {0.8,0.8,0.8,0.9},
	}
	
	Label = Chili.Label:New{
		x = "20%",
		y = "10",
		width="100%";
		height="90%";
		parent = Window,
		caption = caption,
		fontsize = 52,
		autosize = false,
		textColor = {1,1,1,1},
	}
	button_quit = Button:New {
		width = 60,
		height = 20,
		y = 0,
		x = 200,
		parent=Window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption="Quit",
		tooltip = "Quit the game";
		OnMouseDown = {function()
			Spring.SendCommands ("quit")
			end}
	}
end

function widget:Shutdown()
	Spring.SendCommands('endgraph 1')
end

function widget:RecvLuaMsg(msg, playerID)
	Spring.Echo(msg:sub(9))
	if not speccing then
		if (msg:sub(1,8) == 'gameover') then
			local winner = msg:sub(9)
			CreateWindow(winner)
		end
	end
end
