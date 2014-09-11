local base = piece('base');

local flare = piece('flare');

local mortero = piece('mortero');

local canon = piece('mortero');

local peana = piece('peana');

local root = piece('root');

local SIG_AIM = 1

local smoke = SFX.CEG

function script.Create()
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return mortero
end

function script.QueryWeapon1() 
	return flare
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(base, z_axis, heading, math.rad(140))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, z_axis)
	return true
end

function script.StartMoving(heading)
	Turn(peana, z_axis, heading, math.rad(140))

end

function script.StopMoving()
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (base, SFX.SHATTER)
	Explode (mortero, SFX.FIRE)
end
