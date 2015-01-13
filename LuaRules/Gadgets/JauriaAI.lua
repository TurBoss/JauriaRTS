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

local function makeunit(cmd,line,words,player)--uID)
	local unit=words[1]
	if unit then
		Spring.Echo("make a con")
	end
	if unit == "RC" then
		Spring.GiveOrderToUnit(FAC, RC,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
		
	elseif unit == "IT0" then
		Spring.GiveOrderToUnit(FAC, IT0,{0,0,0,0},{}) -- uid, id {pos x, pos y, pos z, dir}
	end
end

local function MineralTable()
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
end

local function FindNearesMineral(t, oriX, oriZ)
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
end
function gadget:GameFrame(frame)
	--if (frame % 30 ==0) then
		--AIDebugMessage("all","test MSG EVERY 30 Frames ".. frame)
	--end
end

function gadget:Initialize()
	SetupCmdChangeAIDebugVerbosity()
end

function gadget:GameStart()
	
	-- Create tables of Geos
	MineralTable()
	
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
            local _,factionName = Spring.GetSideData(side)
            makefirstunits(factionName)
        end
    end
end

function gadget:Initialize()
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
