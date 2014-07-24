function gadget:GetInfo()
  return {
    name      = "NpcSpawner",
    desc      = "Spawn NPC's",
    author    = "TurBoss",
    date      = "16-07-14",
    license   = "GNU GPL v2 or later",
    layer     = 0,
    enabled   = true,  --  loaded by default?
  }
end

local gaiaTeamID = Spring.GetGaiaTeamID()

local spawnTime = 0
local npcDeadTime = 0
local timeToNPC = 0
local isTime = 0
-- synced only

if (not gadgetHandler:IsSyncedCode()) then
	return false
end

function gadget:Initialize ()	
	if Game.gameName ~= "Jauria RTS"	then
		Spring.Echo ("PLAY WITH Jauria RTS!!")
		gadgetHandler:RemoveGadget()
		return
	end
end

function gadget:GameStart()
	spawnNPC()
	spawnTurrets1()
	spawnTurrets2()
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam)
	if unitID == 10600 then
		spawnTime = 5000
	end
end

function gadget:GameFrame(n)
	if spawnTime > 0 then
		--Spring.Echo("Start Timer")
		npcDeadTime = n
		timeToNPC = spawnTime
		spawnTime = 0
	end
	
	if n - npcDeadTime >= timeToNPC then
		spawnNPC()
		timeToNPC = 0
	end
end

--spawn npcs

function spawnNPC()
	npc = {
		{x=2050,name="nk2",z=3550,unitID=10600,rot="north",},
	}
	for i=1, #npc do
		Spring.CreateUnit (npc[i].name, npc[i].x, 100, npc[i].z, npc[i].rot, gaiaTeamID, false, true, npc[i].unitID)
	end
end

function spawnTurrets1()
	npc = {
		{x=1300,name="torreta",z=900,unitID=10500,rot="east",},
		{x=1300,name="torreta",z=1990,unitID=10501,rot="east",},
		{x=1230,name="torreta",z=3000,unitID=10502,rot="east",},
		{x=350,name="torreta",z=1943,unitID=10503,rot="east",},
	}
	for i=1, #npc do
		Spring.CreateUnit (npc[i].name, npc[i].x, 100, npc[i].z, npc[i].rot, 0, false, true, npc[i].unitID)
	end
end

function spawnTurrets2()
	npc = {
		{x=2766,name="torreta",z=900,unitID=10504,rot="west",},
		{x=2766,name="torreta",z=1990,unitID=10505,rot="west",},
		{x=2830,name="torreta",z=3000,unitID=10506,rot="west",},
		{x=3722,name="torreta",z=1943,unitID=10507,rot="west",},
	}
	for i=1, #npc do
		Spring.CreateUnit (npc[i].name, npc[i].x, 100, npc[i].z, npc[i].rot, 1, false, true, npc[i].unitID)
	end
end
