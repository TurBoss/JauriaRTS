local root = piece "root"

local base = piece "base"

local rueda_1 = piece "rueda_1"

local rueda_2 = piece "rueda_2"

--pieces used by the weapon:

local canon1 = piece "canon1"

local canon2 = piece "canon2"

local flare1 = piece "flare1"

local flare2 = piece "flare2"




local wheel_speed = math.rad(180)

local SIG_AIM1 = 1
local SIG_AIM2 = 2


function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return canon1
end

function script.AimFromWeapon2() 
	return canon2
end

function script.QueryWeapon1() 
	return flare1
end

function script.QueryWeapon2() 
	return flare2
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	
	Turn(canon1, z_axis, heading, math.rad(180))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (canon1, z_axis)
	
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM2)
	SetSignalMask(SIG_AIM2)
	
	Turn(canon2, z_axis, heading, math.rad(180))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (canon2, z_axis)
	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
end
function script.FireWeapon2()
	
end

function script.StartMoving(heading)
	Turn (canon1, z_axis, heading, math.rad(80))
	Turn (canon2, z_axis, heading, math.rad(80))
	Spin(rueda_1, x_axis, wheel_speed)
	Spin(rueda_2, x_axis, wheel_speed)

end

function script.StopMoving()
	StopSpin (rueda_1,x_axis)
	StopSpin (rueda_2,x_axis)

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (base, SFX.SHATTER)	
	Explode (canon1, SFX.FIRE)
	Explode (canon2, SFX.FIRE)



end

