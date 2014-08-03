local root = piece "root"
local torre = piece "torre"
--pieces used by the weapon:
local bola = piece "bola"
local flare = piece "flare"


function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return bola
end

function script.QueryWeapon1() 
	return flare
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )

	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)
	Explode (torre, SFX.SHATTER)
	Explode (bola, SFX.FIRE)
end
