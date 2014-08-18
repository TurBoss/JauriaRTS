local root = piece('root');
local rootantena = piece('rootantena');
local rootlanzadera = piece('rootlanzadera');

local chasis = piece('chasis');
local antena = piece('antena');
local lanzadera = piece('lanzadera');

local cohete = piece('cohete');

local flare = piece('flare');

local rueda1d = piece('rueda1d');
local rueda2d = piece('rueda2d');

local rueda1i = piece('rueda1i');
local rueda2i = piece('rueda2i');


local wheel_speed = math.rad(180)

local SIG_AIM = 1

function script.Create()
	Spin(rootantena, z_axis, math.rad(180))
end

---AIMING & SHOOTING---
function script.AimFromWeapon1()
	return chasis
end

function script.QueryWeapon1()
	return flare
end

function script.BlockShot(num, targetID)
	if targetID ~= nil then
		return false
	else
		return true
	end
end
--called after the weapon has fired
function script.FireWeapon1()
	Hide(cohete)
	Move (cohete, y_axis, -8)
	Sleep (1000)
	Show (cohete)
	Move (cohete, y_axis, 0,30)
end

function script.AimWeapon1( heading, pitch)
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	
	Turn(rootlanzadera, z_axis, heading, math.rad(60))
	Turn(lanzadera, x_axis, -pitch, math.rad(60))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (lanzadera, x_axis)
	WaitForTurn (rootlanzadera, z_axis)
	return true
end


function script.StartMoving(heading)
	Turn (lanzadera, z_axis, heading, math.rad(60))
	Turn (rootlanzadera, x_axis, 0, math.rad(60))
	Spin(rueda1i, x_axis, wheel_speed)
	Spin(rueda2i, x_axis, wheel_speed)
	Spin(rueda1d, x_axis, wheel_speed)
	Spin(rueda2d, x_axis, wheel_speed)
end

function script.StopMoving()
	StopSpin (rueda1i,x_axis)
	StopSpin (rueda2i,x_axis)
	StopSpin (rueda1d,x_axis)
	StopSpin (rueda2d,x_axis)
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (chasis, SFX.SHATTER)
	Explode (rueda1d, SFX.FIRE)
	Explode (rueda2d, SFX.FIRE)
	Explode (rueda1i, SFX.FIRE)
	Explode (rueda2i, SFX.FIRE)
end
