local root = piece "root"
local root = piece "root"

local base = piece "base"
local bola1 = piece "bola1"
local bola2 = piece "bola2"

local SIG_RC = 1

function script.Create()
	Spin(base, z_axis, math.rad(200))

end

function script.Killed()
end

--------BUILDING---------

function script.StopBuilding()
end

function script.StartBuilding(heading, pitch)  
	SetUnitValue(COB.INBUILDSTANCE, 1)
end

function script.QueryNanoPiece()
     return base
end

function script.StartMoving()
end

function script.StopMoving()
end
