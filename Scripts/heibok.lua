local chasis = piece('chasis');

local centro = piece('centro');

local flare = piece('flare');

local cabeza = piece('cabeza');

local arma = piece('arma');

local haekhipso = piece('haekhipso');

local cristal = piece('cristal');

local root = piece('root');

local SIG_AIM = 1

local smoke = SFX.CEG

function script.Create()
end

function script.Create()
	Spin(cristal, y_axis, math.rad(120))
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return flare
end

function script.QueryWeapon1() 
	return flare
end

--called after the weapon has fired
function script.FireWeapon1()
	--EmitSfx(flare, smoke)
end

function script.AimWeapon1( heading, pitch)
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(cabeza, z_axis, heading, math.rad(80))
	Turn(centro, x_axis, -pitch, math.rad(80))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (centro, x_axis)
	return true
end

function script.StartMoving(heading)
	Turn (cabeza, z_axis, heading, math.rad(80))
end

function script.StopMoving()
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (base, SFX.SHATTER)
	Explode (canon, SFX.FIRE)
end
