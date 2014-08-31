local root = piece ("root");
local flare = piece ("flare");
local flare_nano = piece("flare_nano");
local cabina = piece ("cabina");
local nano = piece ("nano");
local pistola = piece ("pistola");


--local smokecloud = SFX.CEG   --the first effect from the list in the unitdef

local SIG_RC = 1

local smoke = SFX.CEG

function script.Create()
end

function script.Killed()
	Explode (cabina, SFX.SHATTER)
	Explode (pistola, SFX.FIRE)
end

--------BUILDING---------

function script.StopBuilding()
	Turn (nano, z_axis, 0, math.rad(100))
end

function script.StartBuilding(heading, pitch)  
	Signal(SIG_RC)
	SetSignalMask(SIG_RC)
	Turn (nano, z_axis, heading, math.rad(100))
	WaitForTurn(nano, z_axis)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	
end

function script.QueryNanoPiece()
	return flare_nano
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return pistola
end

function script.QueryWeapon1() 
	return flare
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	
	Turn(pistola, z_axis, heading, math.rad(180))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (pistola, z_axis)
	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	EmitSfx(flare, smoke)
end

function script.StartMoving(heading)
	Turn (pistola, z_axis, heading, math.rad(80))

end


function script.StartMoving()
end

function script.StopMoving()
end
