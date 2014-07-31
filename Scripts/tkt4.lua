local root = piece "root"

local chasis = piece "chasis"

local rueda1d = piece "rueda1d"
local rueda2d = piece "rueda2d"
local rueda3d = piece "rueda3d"
local rueda4d = piece "rueda4d"

local rueda1i = piece "rueda1i"
local rueda2i = piece "rueda2i"
local rueda3i = piece "rueda3i"
local rueda4i = piece "rueda4i"

--pieces used by the weapon:

local canon = piece "canon"
local flare = piece "flare"

local wheel_speed = math.rad(180)

local SIG_AIM = 1

function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return canon
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
	
	Turn(canon, z_axis, heading, math.rad(80))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (canon, z_axis)

	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
end

function script.StartMoving(heading)
	Turn (canon, z_axis, heading, math.rad(80))
	Spin(rueda1i, x_axis, wheel_speed)
	Spin(rueda2i, x_axis, wheel_speed)
	Spin(rueda3i, x_axis, wheel_speed)
	Spin(rueda4i, x_axis, wheel_speed)
	Spin(rueda1d, x_axis, wheel_speed)
	Spin(rueda2d, x_axis, wheel_speed)
	Spin(rueda3d, x_axis, wheel_speed)
	Spin(rueda4d, x_axis, wheel_speed)
end

function script.StopMoving()
	StopSpin (rueda1i,x_axis)
	StopSpin (rueda2i,x_axis)
	StopSpin (rueda3i,x_axis)
	StopSpin (rueda4i,x_axis)
	StopSpin (rueda1d,x_axis)
	StopSpin (rueda2d,x_axis)
	StopSpin (rueda3d,x_axis)
	StopSpin (rueda4d,x_axis)
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)	
	Explode (canon, SFX.FIRE)
	Explode (rueda1i, SFX.FIRE)
	Explode (rueda2i, SFX.FIRE)
	Explode (rueda3i, SFX.FIRE)
	Explode (rueda4i, SFX.FIRE)
	Explode (rueda1d, SFX.FIRE)
	Explode (rueda2d, SFX.FIRE)
	Explode (rueda3d, SFX.FIRE)
	Explode (rueda4d, SFX.FIRE)

end

