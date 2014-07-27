function gadget:GetInfo()
    return {
        name    = "JauriaAI",
        desc    = "An AI that knows how to play Mod X",
        author  = "John Doe",
        date    = "2020-12-31",
        license = "Public Domain",
        layer   = 82,
        enabled = true
    }
end

function gadget:GameStart() 
    -- Initialise AI for all teams that are set to use it
    for _,t in ipairs(Spring.GetTeamList()) do
        local _,_,_,isAI,side = Spring.GetTeamInfo(t)
        if Spring.GetTeamLuaAI(t) == gadget:GetInfo().name then
            Spring.Echo("Team "..t.." assigned to "..gadget:GetInfo().name)
            local pos = {}
            local home_x,home_y,home_z = Spring.GetTeamStartPosition(t)
        end
    end
end
