local root = piece "root"

local base = piece "base"

local pico = piece "pico"

--pieces used by the weapon:

local canon = piece "canon"

local flare = piece "flare"

local wheel_speed = math.rad(180)

local SIG_AIM = 1

local smoke = SFX.CEG

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
	
	Turn(canon, z_axis, heading, math.rad(560))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (canon, z_axis)
	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	EmitSfx(flare, smoke)
end

function script.StartMoving(heading)
	Turn (canon, z_axis, heading, math.rad(80))

end

function script.StopMoving()

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (pico, SFX.SHATTER)	
	Explode (canon, SFX.FIRE)
	Explode (base, SFX.FIRE)


end

