--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
	return {
		name      = "Camera control",
		desc      = "Controls camera zooming and panning",
		author    = "gajop",
		date      = "WIP",
		license   = "GPLv2",
		version   = "0.1",
		layer     = -1000,
		enabled   = true,  --  loaded by default?
		handler   = true,
		api       = true,
		hidden    = true,
	}
end

function widget:Initialize()
    --for k, v in pairs(Spring.GetCameraState()) do
    --    Spring.Echo(k .. " = " .. tostring(v) .. ",")
    --end
--     local devMode = (tonumber(Spring.GetModOptions().play_mode) or 0) == 0
--     if devMode then
--         widgetHandler:RemoveWidget(widget)
--         return
--     end
    s = {
        px = 3150,
        py = 102.34146118164,
        pz = 3480,
        mode = 1,
        flipped = -1,
        dy = -0.90149933099747,
        dz = -0.43356931209564,
        fov = 45,
        height = 3300,
        angle = 0.46399998664856,
        dx = 0,
        name = "spring",
    }
--     Spring.SetCameraState(s, 0)
end

function widget:Shutdown()
end

function widget:MouseWheel(up,value)
    -- uncomment this to disable zoom/panning
    --return true
end
