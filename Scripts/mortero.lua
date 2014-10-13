local root = piece "root"

local paredes = piece "paredes"
local escaleras = piece "escaleras"
local suelo = piece "suelo"
local barandillas = piece "barandillas"
local puerta = piece "puerta"
local ventanas = piece "ventanas"

--pieces used by the weapon:
local cupula = piece "cupula"
local canon = piece "canon"
local flare = piece "flare"

local SIG_AIM = 1

function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return flare
end

function script.QueryWeapon1() 
	return flare
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	
	Turn(cupula, z_axis, heading, math.rad(25))
	Turn(canon, x_axis, -pitch, math.rad(25))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (canon, x_axis)
	WaitForTurn (cupula, z_axis)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)
	Explode (canon, SFX.SHATTER)
	Explode (cupula, SFX.FIRE)
end
