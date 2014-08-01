function widget:GetInfo()
	return {
		name      = "cheat",
		desc      = "GUI for enable Cheats",
		author    = "TurBoss",
		date      = "2-7-2014",
		license   = "GNU GPL v2 or later",
		layer     = 1, 
		enabled   = true  --  loaded by default?
	}
end

local Chili
local Button
local Label
local Window
local Panel
local TextBox
local Image
local Progressbar
local Control
local Font

function widget:Initialize()
	-- setup Chili
	Chili = WG.Chili
	Button = Chili.Button
	Label = Chili.Label
	Colorbars = Chili.Colorbars
	Window = Chili.Window
	StackPanel = Chili.StackPanel
	Image = Chili.Image
	Progressbar = Chili.Progressbar
	Control = Chili.Control
	screen0 = Chili.Screen0
	
	--create main Chili elements
	local screenWidth,screenHeight = Spring.GetWindowGeometry()
	local height = tostring(math.floor(screenWidth/screenHeight*0.35*0.35*100)) .. "%"
	local y = tostring(math.floor((1-screenWidth/screenHeight*0.35*0.35)*100)) .. "%"
	
	local labelHeight = 24
	local fontSize = 16

	window = Window:New{
		--parent = screen0,
		name   = 'commands';
		caption = "Commands",
		color = {255, 255, 255, 255},
		width = 110;
		height = 300;
		right = 10; 
		y = "20%";
		dockable = false;
		draggable = true,
		resizable = false,
		tweakDraggable = true,
		tweakResizable = false,
		minWidth = MIN_WIDTH, 
		minHeight = MIN_HEIGHT,
		padding = {0, 0, 0, 0},
		--itemMargin  = {0, 0, 0, 0},
		--caption = "replay control"
	}
	
	button_cheat = Button:New {
		width = 100,
		height = 20,
		y = 25,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption = "Cheats",
		tooltip = "Toogle Cheats";
		OnClick = {function()
			sendCmd ("cheat")
			end}
	}
	
	button_luaRules = Button:New {
		width = 100,
		height = 20,
		y = 45,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption = "LuaRules",
		tooltip = "reload luarules";
		OnClick = {function()
			sendCmd ("luarules reload")
			end}
	}
	
	button_globallos = Button:New {
		width = 100,
		height = 20,
		y = 65,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption = "Los",
		tooltip = "toogle globallos";
		OnClick = {function()
			sendCmd ("globallos")
			end}
	}
	
	button_team0 = Button:New {
		width = 100,
		height = 20,
		y = 85,
		x = 5,
		parent = window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption = "Team 0",
		tooltip = "join team 0";
		OnClick = {function()
			sendCmd ("team 0")
			end}
	}
	
	button_team1 = Button:New {
		width = 100,
		height = 20,
		y = 105,
		x = 5,
		parent = window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption = "Team 1",
		tooltip = "join team 1";
		OnClick = {function()
			sendCmd ("team 1")
			end}
	}
	
	button_god = Button:New {
		width = 100,
		height = 20,
		y = 125,
		x = 5,
		parent = window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption = "GodMode",
		tooltip = "Toogle god mode";
		OnClick = {function()
			sendCmd ("godmode")
			end}
	}
	
	button_nocost = Button:New {
		width = 100,
		height = 20,
		y = 145,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption="No Cost",
		tooltip = "free 4 all";
		OnClick = {function()
			sendCmd ("nocost")
			end}
	}
	
	button_destroy = Button:New {
		width = 100,
		height = 20,
		y = 165,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption="Destroy",
		tooltip = "Destroy units";
		OnClick = {function()
			sendCmd ("destroy")
			end}
	}
	
	button_start = Button:New {
		width = 100,
		height = 20,
		y = 185,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption="Start",
		tooltip = "Start game";
		OnClick = {function()
			sendCmd ("forcestart")
			end}
	}
	
	button_pause = Button:New {
		width = 100,
		height = 20,
		y = 205,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption="Pause",
		tooltip = "Pause the game";
		OnClick = {function()
			sendCmd ("pause")
			end}
	}
	
	button_atm = Button:New {
		width = 100,
		height = 20,
		y = 225,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption="ATM",
		tooltip = "Give 1000";
		OnClick = {function()
			sendCmd ("atm")
			end}
	}
	
	button_colvol = Button:New {
		width = 100,
		height = 20,
		y = 245,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption="ColVol",
		tooltip = "Collision and Volume";
		OnClick = {function()
			sendCmd ("debugcolvol")
			end}
	}
	
	button_quit = Button:New {
		width = 100,
		height = 20,
		y = 265,
		x = 5,
		parent=window;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		backgroundColor = {1, 1, 1, 1},		
		caption="Quit",
		tooltip = "Quit the game";
		OnClick = {function()
			sendCmd ("quit")
			end}
	}
	
	screen0:AddChild(window)

end

function sendCmd (cmd)
	Spring.SendCommands (cmd)
end
