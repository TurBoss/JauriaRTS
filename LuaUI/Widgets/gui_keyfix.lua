local versionNumber = "1.1"

function widget:GetInfo()
	return {
	name = "Keyfix",
	desc = "Add fixes for some keys, such as ESC, C and L",
	author = "Jools",
	date = "Nov, 2011",
	license = "shark",
	layer = 1,
	enabled = true
	}
end

local sndOrder1								= LUAUI_DIRNAME .. 'Sounds/order1.ogg'
local transportTable						= {}

function widget:Initialize()

	for id,uD in pairs(UnitDefs) do
		--Spring.Echo("Checking transporters...",id, uD.humanName,uD.isTransport, uD.transportCapacity)
		if uD.transportCapacity > 0 then 
			table.insert(transportTable,id) 
			--Spring.Echo("Transporter found:",id, uD.humanName)
		end
	end
end

local enableESC = true
local enableC = true
local enableLoad = true
local enableGiveEnemy = false
local enableGiveAlly = true


function widget:KeyPress(key, mods, isRepeat)
	local sU = Spring.GetSelectedUnits()
	-- If C is pressed then give capture order. Now works with any unit that can capture.
	if (key == 0x063) and (not isRepeat) and (not mods.ctrl) and (not mods.shift) and enableC then 
		--Spring.Echo("C down")
		if (sU and #sU==1) then
			local ud = UnitDefs[Spring.GetUnitDefID (sU[1])]
			if (ud.canCapture) then
				Spring.SetActiveCommand("capture")
				return true
			end
		end
	-- On ESC clear selection and disable nag text.	
	elseif (key == 0x01B) and (not isRepeat) and (not mods.ctrl) and (not mods.shift) and enableESC then
			Spring.SendCommands("deselect")
			return true
	-- If commander is selected and L is pressed: call a transport to pick it up
	elseif (key == 0x06C) and (not isRepeat) and (not mods.ctrl) and enableLoad then
		local sU = Spring.GetSelectedUnits()
		
		if (sU and #sU==1) then
			local ud = UnitDefs[Spring.GetUnitDefID (sU[1])]
			if not ud.isTransport then
				local comm = sU[1]
				local bestTransport
				local bestscore = 0
				local myTeam = Spring.GetMyTeamID()
				
				for _, tDef in ipairs (transportTable) do
					for _, tID in ipairs (Spring.GetTeamUnitsByDefs(myTeam,tDef)) do
						local group = Spring.GetUnitGroup(tID)
						local isAir = UnitDefs[Spring.GetUnitDefID(tID)].canFly
						local name = UnitDefs[Spring.GetUnitDefID(tID)].humanName
						local speed = UnitDefs[Spring.GetUnitDefID(tID)].speed
						local score 
						local dist = Spring.GetUnitSeparation(comm, tID)/1000
						
						if speed then 
							score = speed 
						else
							score = 0
						end
						if group then score = score * 100 end
						if isAir then score = score * 10 end
						if dist then
							score = score / dist
						else
							score = 0
						end
						
						if score > bestscore then 
							bestscore = score
							bestTransport = tID
						end
					end
				end
					
				if bestTransport then
					if not mods.shift then 
						Spring.Echo(UnitDefs[Spring.GetUnitDefID(bestTransport)].humanName .. ": on my way...")
						Spring.PlaySoundFile(sndOrder1)
						Spring.GiveOrderToUnit(bestTransport,CMD.LOAD_UNITS,{comm},{})
					else
						Spring.SetCameraTarget(Spring.GetUnitPosition(bestTransport))
						Spring.SelectUnitArray({bestTransport})
					end
				end
				return true
			end
		end
		return false
	-- If a unit is selected and Ctrl+n is pressed: give unit to closest enemy
	elseif (key ==  0x06E) and (not isRepeat) and (mods.ctrl) and enableGiveEnemy then
		local sU = Spring.GetSelectedUnits()
		
		if sU then
			local eUID	= Spring.GetUnitNearestEnemy(sU[1])
			if not eUID then
				Spring.Echo("No enemy found.")
				return false 
			end
			local eTeam = Spring.GetUnitTeam(eUID)
	
			local count
			for i,uID in ipairs (sU) do
				Spring.Echo(i,uID,eTeam)
				Spring.TransferUnit(uID,eTeam)
				count = i
			end
			Spring.Echo("Gave " .. count .. " units to enemy")
			Spring.PlaySoundFile(sndOrder1)	
			return true
		end
	else
		return false
	end
end
