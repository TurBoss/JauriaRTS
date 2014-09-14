local root = piece "root"

local chasis = piece "chasis"
local cabina = piece "cabina"
local faros = piece "faros"

local antena = piece "antena"
local ruedas1 = piece "ruedas1"
local ruedas2 = piece "ruedas2"
local ruedas3 = piece "ruedas3"

--pieces used by the weapon:

local lanzadoreje = piece "lanzadoreje"
local disco = piece "disco"
local flare = piece "flare"

local wheel_speed = math.rad(180)

local SIG_AIM = 1

function script.Create()
	Spin(disco, z_axis, wheel_speed)
	
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
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	
	Turn(lanzadoreje, z_axis, heading, math.rad(180))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (lanzadoreje, z_axis)

	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	Hide(disco)
	Sleep(500)
	Show(disco)

end


function script.StartMoving(heading )
	Turn (lanzadoreje, z_axis, heading, math.rad(180))
	Spin(ruedas1, x_axis, wheel_speed)
	Spin(ruedas2, x_axis, wheel_speed)
	Spin(ruedas3, x_axis, wheel_speed)
end

function script.StopMoving()
	StopSpin (ruedas1,x_axis)
	StopSpin (ruedas2,x_axis)
	StopSpin (ruedas3,x_axis)
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)
	
	Explode (cabina, SFX.FIRE)
	Explode (lanzadoreje, SFX.FIRE)
	Explode (ruedas1, SFX.FIRE)
	Explode (ruedas2, SFX.FIRE)
	Explode (ruedas3, SFX.FIRE)

end

