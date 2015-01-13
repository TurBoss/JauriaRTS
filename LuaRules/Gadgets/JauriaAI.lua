-- In-game, type /luarules ai in the console to toggle the ai debug messages
function gadget:GetInfo()
    return {
        name    = "JauriaAI",
        desc    = "An AI that knows how to play Mod X",
        author  = "KDR_11k (David Becker), modified by zwzsg adapted to jauria rts by TurBoss",
        date    = "2014-08-25",
        license = "GNU GPL ver 2 or later",
        version = "0.1",
        layer   = 82,
        enabled = true
    }
end


-- synced only
if (gadgetHandler:IsSyncedCode()) then

local teamData={}
local unitPos={}
local spots={}

local orders={}

local FAC1	= 1000
local FAC2	= 1001

--Jauria
local RC			= -4
local IT0			= -6
local NM1			= -12
local RK2			= -18
local NK3			= -22
local TKT4			= -33
local LZ5			= -36 
local DT6			= -41

--Heiks

--Chaos
local ADEPT			= -1
local RAIDER		= -8
local MARAUDER		= -11
local BESIEGER		= -14
local PUTRIS		= -23
local DESOLATOR		= -30
local JUGGGRNAUT	= -35 
local DT6			= -39

--Europe
local PROSPECTOR	= -3
local MILITIA		= -7
local BERSERKER		= -9
local OVERKRAFT		= -17
local VALKYRIA		= -25
local SCORPIO		= -32
local TAURUS		= -37 
local ATLAS			= -40

local AI_Debug_Mode = 1 -- Must be 0 or 1

local function ChangeAIDebugVerbosity(cmd,line,words,player)
	local lvl=tonumber(words[1])
	if lvl then
		AI_Debug_Mode=lvl
		Spring.Echo("AI debug verbosity set to "..AI_Debug_Mode)
	else
		if AI_Debug_Mode>0 then
			AI_Debug_Mode=0
		else
			AI_Debug_Mode=1
		end
		Spring.Echo("AI debug verbosity toggled to "..AI_Debug_Mode)
	end
	return true
end

local function AIDebugMessage(t,message)
	if(AI_Debug_Mode>0) then
		Spring.Echo("Team["..t.."] "..message)
	end
end

local function SetupCmdChangeAIDebugVerbosity()
	--Spring.Echo("Add cmd")
	local cmd,func,help
	cmd  = "ai"
	func = ChangeAIDebugVerbosity
	help = " [0|1]: make the LUA AI shut up or fill your infolog"
	gadgetHandler:AddChatAction(cmd,func,help)
	Script.AddActionFallback(cmd..' ',help)
end

local function FindNearesMineral(t, oriX, oriZ)
	--[[local td = teamData[t]
	Spring.Echo(td)
	local nicest_geo_so_far = nil
	local nicest_geo_dist = 0

	for _=1,math.max(#td.positions/2,2) do
		local p = math.random(#td.positions)
		local pos = td.positions[p]+
		Spring.Echo(pos)
	end
		if((pos.state==STATE_EMPTY and (not pos.underConstruction) and (not IsItOccupied(pos.x,pos.z))) and ((nicest_geo_so_far==nil) or (pos.dist<=nicest_geo_dist))) then
			nicest_geo_so_far = p
			nicest_geo_dist = math.sqrt((pos.x-oriX)*(pos.x-oriX) + (pos.z-oriZ)*(pos.z-oriZ))
		end
	end

	if not nicest_geo_so_far then
		for _=1,2*#td.positions do
			local p = math.random(#td.positions)
			local pos = td.positions[p]
			if((pos.state~=STATE_OWN and (not pos.underConstruction) and (not IsItOccupied(pos.x,pos.z))) and ((nicest_geo_so_far==nil) or (pos.dist<=nicest_geo_dist))) then
				nicest_geo_so_far = p
				if(pos.state==STATE_EMPTY) then
					nicest_geo_dist = math.sqrt((pos.x-oriX)*(pos.x-oriX) + (pos.z-oriZ)*(pos.z-oriZ))
				else
					nicest_geo_dist = 2*math.sqrt((pos.x-oriX)*(pos.x-oriX) + (pos.z-oriZ)*(pos.z-oriZ))
				end
			end
		end
	end

	return nicest_geo_so_far]]--
end

local function makefirstunits(faction)--uID)
	if faction == "Jauria" then
		Spring.GiveOrderToUnit(FAC1, RC,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, NM1,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, NM1,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, NM1,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, NM1,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, NM1,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
	elseif faction == "Chaos" then
		Spring.GiveOrderToUnit(FAC1, ADEPT,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, RAIDER,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, RAIDER,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, RAIDER,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, RAIDER,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, RAIDER,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
	elseif faction == "Europe" then
		Spring.GiveOrderToUnit(FAC1, PROSPECTOR,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, MILITIA,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, MILITIA,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, MILITIA,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, MILITIA,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		Spring.GiveOrderToUnit(FAC1, MILITIA,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
	end
	--FindNearesMineral(0, 300, 300)
end

function gadget:Initialize()
	SetupCmdChangeAIDebugVerbosity()
end

function gadget:GameStart()
	
	-- Create tables of Geos
	for _,f in ipairs(Spring.GetAllFeatures()) do
		if FeatureDefs[Spring.GetFeatureDefID(f)].name == "mineral1" or FeatureDefs[Spring.GetFeatureDefID(f)].name == "mineral2" then
			local x,y,z = Spring.GetFeaturePosition(f)
			--Merging algorithm because some KP maps have multiple geos in one spot
			local newSpot=true
			for i,s in pairs(spots) do
				if math.sqrt((x-s.x)*(x-s.x) + (z-s.z)*(z-s.z)) < 64 then
					newSpot = false
					break
				end
			end
			if newSpot then
				table.insert(spots, {x=x, y=y, z=z})
			end
		end
	end
	
    -- Initialise AI for all teams that are set to use it
    for _,t in ipairs(Spring.GetTeamList()) do
        local _,_,_,isAI,side = Spring.GetTeamInfo(t)
        if Spring.GetTeamLuaAI(t) == gadget:GetInfo().name then
            Spring.Echo("Team "..t.." assigned to "..gadget:GetInfo().name)
            local pos = {}
            local home_x,home_y,home_z = Spring.GetTeamStartPosition(t)
            pos[0]={x=home_x, y=home_y, z=home_z, dist=0, state=HOMEBASE, spams = 0, underConstruction=false}
			for i,s in pairs(spots) do
				local dist = math.sqrt((home_x-s.x)*(home_x-s.x) + (home_z-s.z)*(home_z-s.z))
				if dist >= 64 then
					table.insert(pos,{x=s.x, y=s.y, z=s.z,dist = dist, state = STATE_EMPTY, spams = 0, underConstruction=false})
				end
			end
			for i,_ in pairs(pos) do
				AIDebugMessage(t,"pos["..i.."] @(x="..math.floor(pos[i].x)..",z="..math.floor(pos[i].z)..") dist="..math.floor(pos[i].dist))
			end
			if #pos==0 then
				table.insert(pos,pos[0]) -- just to prevent bug on geoless maps
			end
			local _,_,_,_,_,at = Spring.GetTeamInfo(t)
			teamData[t]= {
				positions=pos,
				missions={},
				constructors={},
				factories={},
				dangers={},
				threatRating=0,
				com={},
				lastMove=0,
				forceSize=0,
				no_more_enemies_since=0,
				lastAllyDamage=nil,
			}
            --Spring.Echo(Spring.GetSideData(side))
            local startUnit,factionName = Spring.GetSideData(side)
            table.insert(orders,{FAC1,CMD.MOVE,{2150,0,2900},{}})
            makefirstunits(factionName)
        end
    end
end

function gadget:Initialize()
end

local function RemoveSelfIfNoTeam()
	local AIcount=0
	for t,td in pairs(teamData) do
		AIcount=AIcount+1
	end
	if(AIcount==0) then -- #teamData is 0 even when there are teams, and teamData=={} is untrue even when teamData={}
		AIDebugMessage("none",gadget:GetInfo().name.." removing self")
		gadgetHandler:RemoveGadget()
	end
end

function gadget:GameFrame(f)

	if (f % 30 ==0) then
		AIDebugMessage("all","test MSG EVERY 30 Frames ".. f)
	end
	for i,o in pairs(orders) do
		if orders[i][5]==2 then -- delete that order in case displaying it causes error
			orders[i]=nil
		elseif orders[i][5]==1 then -- display that order in case executing it causes error
			orders[i][5]=2
			Spring.Echo("Spring.GiveOrderToUnit(",o[1],o[2],o[3],o[4],")")
			local cmd_name=o[2]
			for name,cmd in pairs(CMD) do
				if cmd == o[2] then
					cmd_name = name
				end
			end
 			Spring.Echo(UnitDefs[Spring.GetUnitDefID(o[1])].name.." given invalid "..cmd_name.." order")
		elseif Spring.ValidUnitID(o[1]) and not Spring.GetUnitIsDead(o[1]) then
			orders[i][5]=1
			Spring.GiveOrderToUnit(o[1],o[2],o[3],o[4])
		else
			AIDebugMessage("all","attempted to give order to ID="..o[1].." non-existant unit")
		end
		orders[i]=nil
	end
	
	_G.teamData=teamData
	_G.KPAI_Debug_Mode=KPAI_Debug_Mode
	
	
	-- AI update
	if f % 128 < .1 then
		RemoveSelfIfNoTeam()
	end
end
function gadget:UnitCreated(u,ud,team,builder)
end

function gadget:UnitDamaged(u,ud,team, damage, para, weapon,attacker,aud,ateam)
end

function gadget:UnitFinished(u, ud, team, builder)
end

function gadget:UnitDestroyed(u,ud,team)
end

function gadget:RecvLuaMsg(msg, playerID)
end

else
end
