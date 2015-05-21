
function widget:GetInfo()
  return {
    name      = "HUD Presets",
    desc      = "Sets the default UI and provides presets for different HUD setups.",
    author    = "Google Frog",
    date      = "24 August, 2014",
    license   = "GNU GPL, v2 or later",
    layer     = 51,
    enabled   = true,
    handler   = true,
  }
end

----------------------------------------------------
-- Default Preset
----------------------------------------------------
local function SetupDefaultPreset()
	-- Disable
	widgetHandler:DisableWidget("Combo Overhead/Free Camera (experimental)")
	widgetHandler:DisableWidget("Night")
	widgetHandler:DisableWidget("Nightvision Shader")
	widgetHandler:DisableWidget("CEG Spawner")
	widgetHandler:DisableWidget("ChiliInspector")
	widgetHandler:DisableWidget("ChiliProfiler")
	widgetHandler:DisableWidget("Widget Profiler")
	widgetHandler:DisableWidget("modding/debug Show Unit ID and projectiles")
	widgetHandler:DisableWidget("BuildETA")
	widgetHandler:DisableWidget("Cursor tooltip")
	widgetHandler:DisableWidget("Control Panel")
	widgetHandler:DisableWidget("Display DPS")
	widgetHandler:DisableWidget("Easy Facing")
	widgetHandler:DisableWidget("Fancy Teamplatter")
	widgetHandler:DisableWidget("HighlightUnit")
	widgetHandler:DisableWidget("ReclaimInfo")
	widgetHandler:DisableWidget("Spotterrings")
	widgetHandler:DisableWidget("Unit Stats")
	widgetHandler:DisableWidget("cheat")
	widgetHandler:DisableWidget("chiliGUIDemo")
	widgetHandler:DisableWidget("unit preview spawner")
	widgetHandler:DisableWidget("External VR Grid")
	widgetHandler:DisableWidget("Map Edge Barrier")
	widgetHandler:DisableWidget("Map Edge Extension")
	widgetHandler:DisableWidget("Volume OSD")
	widgetHandler:DisableWidget("Chat Shortcut")
	widgetHandler:DisableWidget("Grabinput")
	widgetHandler:DisableWidget("Watchdog")
	widgetHandler:DisableWidget("HealthBars")
	--widgetHandler:DisableWidget("Show All Commands v2")
	
	
	
	
	-- Enable
	widgetHandler:EnableWidget("CameraShake")
	widgetHandler:EnableWidget("SmoothCam")
	widgetHandler:EnableWidget("SmoothScroll")
	widgetHandler:EnableWidget("CommandInsert")
	widgetHandler:EnableWidget("NoDuplicateOrders")
	widgetHandler:EnableWidget("SmoothScroll")
	widgetHandler:EnableWidget("GFX Commands FX")
	widgetHandler:EnableWidget("LupsManager")
	widgetHandler:EnableWidget("Projectile lights")
	widgetHandler:EnableWidget("Smoke Signal")
	widgetHandler:EnableWidget("Chili Framework")
	widgetHandler:EnableWidget("Attack AoE")
	widgetHandler:EnableWidget("Chili Chat Bubbles")
	widgetHandler:EnableWidget("Chili Crude Player List")
	widgetHandler:EnableWidget("Chili Docking")
	widgetHandler:EnableWidget("Chili Pro Console")
	widgetHandler:EnableWidget("Commands FX")
	widgetHandler:EnableWidget("Context Menu")
	widgetHandler:EnableWidget("Chili Selections & CursorTip")
	widgetHandler:EnableWidget("Darkening")
	widgetHandler:EnableWidget("Funks EndGame Graph")
	widgetHandler:EnableWidget("Health Bars")
	widgetHandler:EnableWidget("Keyfix")
	widgetHandler:EnableWidget("Minimap")
	widgetHandler:EnableWidget("Pause window")
	widgetHandler:EnableWidget("Radar Colours")
	widgetHandler:EnableWidget("Select Keys")
	widgetHandler:EnableWidget("Select n Center!")
	widgetHandler:EnableWidget("command list window")
	widgetHandler:EnableWidget("Replay control buttons")
	widgetHandler:EnableWidget("MinimapEvents")
	widgetHandler:EnableWidget("Music Player")
	widgetHandler:EnableWidget("Autoquit")
	widgetHandler:EnableWidget("Lups")
	widgetHandler:EnableWidget("Attack Warning")
	widgetHandler:EnableWidget("Cloak Fire State")
	widgetHandler:EnableWidget("CustomFormations2")
	widgetHandler:EnableWidget("UnitShapes")
	widgetHandler:EnableWidget("Show All Commands v2")
	

end

----------------------------------------------------
-- Options
----------------------------------------------------
options_path = 'Settings/HUD Presets'
options_order = {'setToDefault'}
options = {
	setToDefault = {
		name  = "Set To Default Once",
		type  = "bool", 
		value = true, 
		desc = "Resets the HUD to the default next time this widget is initialized.(Needs Restart or /luaui reload)",
		advanced = true,
	},
}

----------------------------------------------------
-- First Run Handling
----------------------------------------------------
local firstUpdate = true

function widget:Update()
	if firstUpdate then
		if options.setToDefault.value then
			-- This is where the defaults are set.
			SetupDefaultPreset()
			options.setToDefault.value = false
		end
		firstUpdate = false
	end
end
