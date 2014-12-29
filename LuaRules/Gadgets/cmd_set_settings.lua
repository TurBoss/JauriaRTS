function gadget:GetInfo()
	return {
		name      = "settings",
		desc      = "Widget to set various settings on game start",
		author    = "TurBoss",
		date      = "14-7-2014",
		license   = "GNU GPL v2 or later",
		layer     = 1, 
		enabled   = true  --  loaded by default?
	}
end

function gadget:GamePreload()
	--Spring.SendCommands("bind f4 showmetalmap")
	Spring.SendCommands("bind d manualfire")
	
	Spring.SendCommands("togglelos")
	Spring.SendCommands("toggleradarandjammer")
	
	Spring.LoadCmdColorsConfig('move  0.5 1.0 0.5 0.0')
end
