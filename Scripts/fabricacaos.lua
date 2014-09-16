--script for the facory
local portal = piece "portal"
local flare = piece "flare"
local buildspot = piece "root"
local ojo = piece "ojo"
local team = piece "team"

function script.Create()

end

function script.Killed()

end

--------BUILDING---------
function script.QueryBuildInfo() 
	return buildspot	--the unit will be constructed at the position of this piece
end

function script.QueryNanoPiece()
	--create a new nano particle at one of the two "nano towers"
	return flare
end

function script.Activate()
	SetUnitValue(COB.YARD_OPEN, 1)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	SetUnitValue(COB.BUGGER_OFF, 1)
	return 1
end

function script.Deactivate()
	SetUnitValue(COB.YARD_OPEN, 0)
	SetUnitValue(COB.INBUILDSTANCE, 0)
	SetUnitValue(COB.BUGGER_OFF, 0)
	return 0
end


function script.StartBuilding()	
	--animation
	--Spin (torre1, y_axis, math.rad(200))
	--Spin (torre2, y_axis, -math.rad(200))
end

function script.StopBuilding()
	--animation
	--StopSpin (nano1, y_axis)
	--StopSpin (nano2, y_axis)
end
---------------------
