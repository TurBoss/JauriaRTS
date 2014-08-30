local base = piece('base');

local flare = piece('flare');

local mortero = piece('mortero');

local ruedas = piece('ruedas');

local adept_d = piece('adept_d');

local adept_i = piece('adept_i');

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
	EmitSfx(flare, smoke)
end

function script.AimWeapon1( heading )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(mortero, z_axis, heading, math.rad(280))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (mortero, z_axis)
	return true
end

function script.StartMoving(heading)
	Turn (mortero, z_axis, heading, math.rad(80))
	Spin(ruedas, x_axis, math.rad(180))

end

function script.StopMoving()
	StopSpin (ruedas,x_axis)
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (base, SFX.SHATTER)
	Explode (mortero, SFX.FIRE)
end
