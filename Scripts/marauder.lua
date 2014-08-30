local root = piece "root"

local torso = piece "torso"

local piernas = piece "piernas"

--pieces used by the weapon:

local brazos = piece "brazos"

local hacha = piece "hacha"

local flare = piece "flare"


local SIG_AIM = 1

local smoke = SFX.CEG

function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return hacha
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
	
	Turn(torso, z_axis, heading, math.rad(180))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torso, z_axis)
	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	Turn (brazos, x_axis, 2.1, 8)
	Sleep (140)
	Turn (brazos, x_axis, 0, 2)
	
end

function script.StartMoving(heading)
	

end

function script.StopMoving()
	

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (torso, SFX.SHATTER)	
	Explode (brazos, SFX.FIRE)
	Explode (piernas, SFX.FIRE)
	Explode (hacha, SFX.FIRE)


end

