local root = piece "root"
local base = piece "base"
--pieces used by the weapon:
local soporte = piece "soporte"
local canyon = piece "canyon"
local flare = piece "flare"


function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return canyon
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
	Turn(soporte, z_axis, heading, math.rad(360))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (soporte, z_axis)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)
	Explode (soporte, SFX.SHATTER)
	Explode (soporte, SFX.FIRE)
	Explode (canyon, SFX.FIRE)
end
