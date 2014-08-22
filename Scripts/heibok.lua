local base = piece('base');

local flare = piece('flare');

local canon = piece('canon');

local root = piece('root');

local SIG_AIM = 1

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
end

function script.AimWeapon1( heading )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(canon, z_axis, heading, math.rad(280))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (canon, z_axis)
	return true
end

function script.StartMoving(heading)
	Turn (canon, z_axis, heading, math.rad(80))
end

function script.StopMoving()
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (base, SFX.SHATTER)
	Explode (canon, SFX.FIRE)
end
