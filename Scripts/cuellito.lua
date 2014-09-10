local base = piece('base');

local flare = piece('flare');

local bola = piece('bola');

local canon = piece('canon');

local cuello = piece('cuello');

local root = piece('root');

local basecuello = piece('basecuello');

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

--called after the weapon has fired
function script.FireWeapon1()
	EmitSfx(flare, smoke)
end

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(basecuello, z_axis, heading, math.rad(140))
	Turn(cuello, x_axis, -pitch, math.rad(140))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (basecuello, z_axis)
	WaitForTurn (cuello, x_axis)
	return true
end

function script.StartMoving(heading)
	Turn(basecuello, z_axis, heading, math.rad(140))
	Turn(cuello, x_axis, 0, math.rad(140))

end

function script.StopMoving()
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (base, SFX.SHATTER)
	Explode (canon, SFX.FIRE)
	Explode (cuello, SFX.SHATTER)
end
