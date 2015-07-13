function widget:GetInfo()
  return {
    name      = "Radar Colours",
    desc      = "Enables an alternate LOS and radar view colouration",
    author    = "Google Frog",
    date      = "8 April 2012",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true --  loaded by default?
  }
end

function widget:Initialize()
        -- always, los, radar, jammer

        local fog = {0.0, 0.0, 0.0, 1}
    	local los = {0.5, 0.5, 0.5, 1}
    	local radar = {0.0, 0.0, 0.0, 1}
    	local jam = {0.0, 0.0, 0.0, 1}
    	local radar2 = {0.0, 0.0, 0.0, 1}

        Spring.SetLosViewColors(fog, los, radar, jam, radar2)
        --{ 0.0, 0.5, 0.0, 0.0 },
        --{ 0.0, 0.5, 0.0, 0.0 },
        --{ 0.0, 0.5, 0.0, 0.0 }
        --)
        widgetHandler:RemoveWidget()
end
