local root = piece "root"

local chasis = piece "chasis"
local cristal1 = piece "cristal1"
local cristal2 = piece "cristal2"
local flare = piece "flare"

--pieces used by the weapon:

local cristal1 = piece "cristal1"
local flare = piece "flare"

local wheel_speed = math.rad(180)

local SIG_AIM = 1

function script.Create()
	Spin(cristal1, z_axis, wheel_speed)
	Spin(cristal2, z_axis, -wheel_speed)
end


---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return chasis
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

function script.StartMoving(heading)
	Turn (chasis, z_axis, heading, math.rad(150))


end

function script.StopMoving()

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)	
	Explode (cristal1, SFX.FIRE)
	Explode (cristal2, SFX.FIRE)


end

