function widget:GetInfo()
	return {
		name      = "keybinds",
		desc      = "Widget to set keybinds on game start",
		author    = "TurBoss",
		date      = "14-7-2014",
		license   = "GNU GPL v2 or later",
		layer     = 1, 
		enabled   = true  --  loaded by default?
	}
end

function widget:Initialize()
	Spring.SendCommands("bind f4 showmetalmap")
end
