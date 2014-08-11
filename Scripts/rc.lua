local root = piece "root"
local flare = piece "flare"
local chasis = piece "chasis"
local boca = piece "boca"
local cajon = piece "cajon"
local mineral = piece "mineral"

local rueda1d, rueda2d, rueda1i, rueda2i = piece ("rueda1d", "rueda2d", "rueda1i", "rueda2i")

local wheel_speed = math.rad(300)

local smokecloud = SFX.CEG   --the first effect from the list in the unitdef

local SIG_RC = 1

function script.Create()
	Hide(mineral)
	EmitSfx(boca, smokecloud)   --emit the first effect
end

function script.Killed()
	Explode (chasis, SFX.SHATTER)
	Explode (boca, SFX.FIRE)
	Explode (cajon, SFX.FIRE)
	Explode (rueda1d, SFX.FIRE)
	Explode (rueda2d, SFX.FIRE)
	Explode (rueda1i, SFX.FIRE)
	Explode (rueda2i, SFX.FIRE)
end

--------BUILDING---------

function script.StopBuilding()
	Turn (boca, z_axis, 0, math.rad(100))
end

function script.StartBuilding(heading, pitch)  
	Signal(SIG_RC)
	SetSignalMask(SIG_RC)
	Turn (boca, z_axis, heading, math.rad(100))
	WaitForTurn(boca, z_axis)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	Show(mineral)
end

function script.QueryNanoPiece()
     return flare
end

function script.StartMoving()
	Turn (boca, z_axis, 0, math.rad(100))
    Spin(rueda1d, x_axis, wheel_speed)
    Spin(rueda2d, x_axis, wheel_speed)
    Spin(rueda1i, x_axis, wheel_speed)
    Spin(rueda2i, x_axis, wheel_speed)
end

function script.StopMoving()
    StopSpin (rueda1d,x_axis)
    StopSpin (rueda2d,x_axis)
    StopSpin (rueda1i,x_axis)
    StopSpin (rueda2i,x_axis)
end
