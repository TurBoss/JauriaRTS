function gadget:GetInfo()
	return {
		name		= "unit preview spawner",
		desc		= "spawns units going through a list.",
		author		= "Smoth",
		date		= "7/12/2014",
		license		= "PD",
		layer		= 5,
		enabled		= true  -- loaded by default?
	}
end

-- because pako gets pissed about this. That is right,
-- I am writing that part JUST because it annoys you pako
local	spIsCheatingEnabled	= Spring.IsCheatingEnabled
local	spCreateUnit		= Spring.CreateUnit
local	spEcho				= Spring.Echo
local	unitsByPlayerID		= {}
local	unitsToBeCreated	= {}
-- SYNCED only
if not gadgetHandler:IsSyncedCode() then
	return
end
	
function CreateUnitAtLocation(unitX,unitY,unitz,playerID)
	local _,_,_,teamID = Spring.GetPlayerInfo(playerID)
	--if spIsCheatingEnabled() and unitsByPlayerID[playerID] ~= nil then
		local unitDefId			= unitsByPlayerID[playerID]
		local unitName			= UnitDefs[unitDefId].name
		local unitSpawnTable	= {}
		
		unitSpawnTable.name		= unitName
		unitSpawnTable.unitX	= unitX
		unitSpawnTable.unitY	= unitY
		unitSpawnTable.unitz	= unitz
		unitSpawnTable.teamID	= teamID

		table.insert(unitsToBeCreated, #unitsToBeCreated+1, unitSpawnTable)
		unitsByPlayerID[playerID]	= nil
	--elseif unitsByPlayerID[playerID] ~= nil then
	--	spEcho("you cannot use this ui without enabling cheat mode")
	--	unitsByPlayerID[playerID]	= nil
	--end
end
	
function gadget:RecvLuaMsg(msg, playerID)
	if (msg:sub(1,16) == 'selectspawerunit') then
		local selectedUnitDefId		= tonumber(msg:sub(17))
		unitsByPlayerID[playerID]	= selectedUnitDefId
	else
		if (msg:sub(1,18) == 'createunitlocation') then
			local unitLocationString	= msg:sub(19)
			local unitlocationTable		= {}
			
			for val in string.gmatch(unitLocationString, '([^,]+)') do
				unitlocationTable[#unitlocationTable+1]		= val
			end
			CreateUnitAtLocation(	unitlocationTable[1], unitlocationTable[2], 
									unitlocationTable[3], playerID)
		end
	end
end

function gadget:GameFrame(frameNumber)
	if #unitsToBeCreated > 0 then
		for key,values in pairs(unitsToBeCreated) do
			local name		= values.name
			local unitX		= values.unitX
			local unitY		= values.unitY
			local unitz		= values.unitz
			local teamID	= values.teamID
			spCreateUnit(	name, unitX, unitY, 
							unitz, 0, teamID)
			table.remove(unitsToBeCreated, key)
		end
	end
end
