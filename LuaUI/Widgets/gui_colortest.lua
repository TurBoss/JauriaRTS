function widget:GetInfo()
	return {
		name      = "color config",
		desc      = "setupt command colors",
		author    = "TurBoss",
		date      = "2-7-2014",
		license   = "GNU GPL v2 or later",
		layer     = 0, 
		enabled   = true  --  loaded by default?
	}
end

function widget:Initialize()
	SetupCommandColors()
end

function SetupCommandColors()
   Spring.LoadCmdColorsConfig('move  0.5 1.0 0.5 0.0')
   --Spring.LoadCmdColorsConfig('unitBox  0 1 0 0.0')
end
