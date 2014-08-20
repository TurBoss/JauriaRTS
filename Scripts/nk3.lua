local chasis = piece('chasis');

local flarei = piece('flarei');
local flared = piece('flared');

local armai = piece('armai');
local armad = piece('armad');

local rueda1d = piece('rueda1d');
local rueda2d = piece('rueda2d');
local rueda3d = piece('rueda3d');

local rueda1i = piece('rueda1i');
local rueda2i = piece('rueda2i');
local rueda3i = piece('rueda3i');

local canon = piece('canon');

local root = piece('root');

local wheel_speed = math.rad(280)

local SIG_AIM = 1

function script.Create()
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return canon
end

function script.AimFromWeapon2() 
	return canon
end

function script.QueryWeapon1() 

	return flarei
end

function script.QueryWeapon2() 

	return flared
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.FireWeapon2()
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

function script.AimWeapon2( heading )
	WaitForTurn (canon, z_axis)
	return true
end

function script.StartMoving(heading)
	Turn (canon, z_axis, heading, math.rad(80))
	Spin(rueda1i, x_axis, wheel_speed)
	Spin(rueda2i, x_axis, wheel_speed)
	Spin(rueda3i, x_axis, wheel_speed)
	Spin(rueda1d, x_axis, wheel_speed)
	Spin(rueda2d, x_axis, wheel_speed)
	Spin(rueda3d, x_axis, wheel_speed)

end

function script.StopMoving()
	StopSpin (rueda1i,x_axis)
	StopSpin (rueda2i,x_axis)
	StopSpin (rueda3i,x_axis)
	StopSpin (rueda1d,x_axis)
	StopSpin (rueda2d,x_axis)
	StopSpin (rueda3d,x_axis)

end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (chasis, SFX.SHATTER)
	Explode (rueda1d, SFX.FIRE)
	Explode (rueda2d, SFX.FIRE)
	Explode (rueda3d, SFX.FIRE)
	Explode (rueda1i, SFX.FIRE)
	Explode (rueda2i, SFX.FIRE)
	Explode (rueda3i, SFX.FIRE)
	Explode (canon, SFX.FIRE)
end
