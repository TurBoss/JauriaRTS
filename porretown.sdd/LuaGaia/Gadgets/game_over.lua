function gadget:GetInfo()
	return {
		name = "Game Over",
		desc = "Declares gameover",
		author = "TurBoss",
		date = "18-7-14",
		license = "GNU GPL, v2 or later",
		layer = 0,
		enabled = true -- loaded by default?
	}
end

local GameOver = Spring.GameOver

-- synced only

if (not gadgetHandler:IsSyncedCode()) then
	return false
end

function gadget:GameOver()
	-- remove ourself after successful game over
	gadgetHandler:RemoveGadget()
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeamID, attackerID, attackerDefID, attackerTeam)
	local team = {}
	team[0] = attackerTeam
	if unitID == 1000 or unitID == 1001 then
		Spring.SendLuaUIMsg("gameover" .. team[0])
		GameOver(team)
	end
end
