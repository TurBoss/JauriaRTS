local root = piece "root"

local chasis = piece "chasis"
local arma1 = piece "arma1"
local arma2 = piece "arma2"
local arma3 = piece "arma3"
local cristal = piece "cristal"
local flare1 = piece "flare1"
local flare2 = piece "flare2"
local flare3 = piece "flare3"

local wheel_speed = math.rad(180)

local SIG_AIM1 = 1

local SIG_AIM2 = 2

local SIG_AIM3= 4

function script.Create()
	Spin(cristal, z_axis, wheel_speed)
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return arma1
end

function script.AimFromWeapon2() 
	return arma2
end

function script.AimFromWeapon3() 
	return arma3
end

function script.QueryWeapon1() 
	return flare1
end

function script.QueryWeapon2() 
	return flare2
end

function script.QueryWeapon3() 
	return flare3
end


--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )

	Signal(SIG_AIM1)

	SetSignalMask(SIG_AIM1)
	
	Turn(arma1, z_axis, heading, math.rad(250))
	
	WaitForTurn (arma1, z_axis)

	
	return true
end

function script.AimWeapon2( heading, pitch )

	Signal(SIG_AIM2)

	SetSignalMask(SIG_AIM2)
	
	Turn(arma2, z_axis, heading, math.rad(250))
	
	WaitForTurn (arma2, z_axis)

	
	return true
end

function script.AimWeapon3( heading, pitch )

	Signal(SIG_AIM3)

	SetSignalMask(SIG_AIM3)
	
	Turn(arma3, z_axis, heading, math.rad(250))
	
	WaitForTurn (arma3, z_axis)

	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
end

function script.FireWeapon2()
	
end

function script.FireWeapon3()
	
end

function script.StartMoving(heading)
	Turn (arma1, z_axis, heading, math.rad(250))
	Turn (arma2, z_axis, heading, math.rad(250))
	Turn (arma3, z_axis, heading, math.rad(250))

end

function script.StopMoving()

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)	
	Explode (cristal, SFX.FIRE)
	Explode (arma1, SFX.FIRE)
	Explode (arma2, SFX.FIRE)
	Explode (arma3, SFX.FIRE)
	
end

