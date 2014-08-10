local root = piece "root"

local chasis = piece "chasis"
local cristal = piece "cristal"


--pieces used by the weapon:

local arma = piece "arma"
local flare = piece "flare"

local wheel_speed = math.rad(180)

local SIG_AIM = 1

function script.Create()
	Spin(cristal, z_axis, wheel_speed)
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return arma
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
	
	Turn(arma, z_axis, heading, math.rad(200))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (arma, z_axis)

	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
end

function script.StartMoving(heading)
	Turn (arma, z_axis, heading, math.rad(150))


end

function script.StopMoving()

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)
	Explode (cristal, SFX.FIRE)
	Explode (arma, SFX.FIRE)


end

