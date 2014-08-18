local base = piece('base');

local centro = piece('centro');
local cabeza = piece('cabeza');

local boca = piece('boca');
local cuello = piece('cuello');

local tierra = piece('tierra');

local flare = piece('flare');

local root = piece('root');


local SIG_AIM = 1

function script.Create()
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return base
end

function script.QueryWeapon1() 

	return flare
end


--called after the weapon has fired
function script.FireWeapon1()
end

function script.AimWeapon1( heading )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Spring.Echo(heading)
	Turn(centro, z_axis, heading, math.rad(280))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (centro, z_axis)
	return true
end


function script.StartMoving(heading)

end

function script.StopMoving()

end

----death animation
function script.Killed(recentDamage, maxHealth)

	Explode (tierra, SFX.SHATTER)
	Explode (base, SFX.FIRE)
	Explode (centro, SFX.FIRE)
	Explode (cabeza, SFX.FIRE)
	Explode (boca, SFX.FIRE)
	Explode (cuello, SFX.FIRE)
end
