local root = piece "root"
local cadera = piece "cadera"
local pierna = piece "pierna"
local pie = piece "pie"
local torso = piece "torso"
local codo = piece "codo"
local arma = piece "arma"

local flarea = piece "flarea"
local flareb = piece "flareb"

local SIG_AIM1 = 1
local SIG_AIM2 = 2

local smoke = SFX.CEG

function script.Create()
	
end
---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return flarea
end

function script.AimFromWeapon2() 
	return flareb
end

function script.QueryWeapon1() 
	return flarea
end

function script.QueryWeapon2() 
	return flareb
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	
	Turn(torso, z_axis, heading, math.rad(220))
	Turn(codo, x_axis, -pitch, math.rad(220))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (codo, x_axis)
	WaitForTurn (torso, z_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	Signal(SIG_AIM2)
	SetSignalMask(SIG_AIM2)
	
	Turn(torso, z_axis, heading, math.rad(220))
	Turn(codo, x_axis, -pitch, math.rad(220))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (codo, x_axis)
	WaitForTurn (torso, z_axis)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	EmitSfx(flarea, smoke)
	EmitSfx(flareb, smoke)
	Move(arma, y_axis, 4, 20)
	Sleep(150)
	Move(arma, y_axis, 0, 20)
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)
	Explode (arma, SFX.SHATTER)
	Explode (torso, SFX.SHATTER)
	Explode (codo, SFX.SHATTER)
	Explode (cadera, SFX.SHATTER)
end
