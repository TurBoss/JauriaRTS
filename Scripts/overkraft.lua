local root = piece('root');

local chasis = piece('chasis');
local cabina = piece('cabina');
local pieza = piece('pieza');

local tubarro1 = piece('tubarro1');
local tubarro2 = piece('tubarro2');

local arma1d = piece('arma1d');
local arma2d = piece('arma2d');
local arma1i = piece('arma1i');
local arma2i = piece('arma2i');

local flare1d = piece('flare1d');
local flare2d = piece('flare2d');
local flare1i = piece('flare1i');
local flare2i = piece('flare2i');

local SIG_AIM = 1

function script.Create()
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return chasis
end

function script.AimFromWeapon2() 
	return chasis
end

function script.AimFromWeapon3() 
	return chasis
end

function script.AimFromWeapon4() 
	return chasis
end

function script.QueryWeapon1() 

	return flare1d
end

function script.QueryWeapon2() 

	return flare2d
end

function script.QueryWeapon3() 

	return flare1i
end

function script.QueryWeapon4() 

	return flare2i
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.FireWeapon2()
end

function script.FireWeapon3()
end

function script.FireWeapon4()
end


function script.AimWeapon1( heading )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(chasis, z_axis, heading, math.rad(280))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (chasis, z_axis)
	return true
end

function script.AimWeapon2( heading )
	WaitForTurn (chasis, z_axis)
	return true
end

function script.AimWeapon3( heading )
	WaitForTurn (chasis, z_axis)
	return true
end

function script.AimWeapon4( heading )
	WaitForTurn (chasis, z_axis)
	return true
end

function script.StartMoving(heading)
	Turn(chasis, z_axis, heading, math.rad(280))

end

function script.StopMoving()

end

----death animation
function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)
	Explode (cabina, SFX.FIRE)
	Explode (tubarro1, SFX.FIRE)
	Explode (tubarro2, SFX.FIRE)
	Explode (pieza, SFX.FIRE)
	Explode (arma1d, SFX.FIRE)
	Explode (arma2d, SFX.FIRE)
	Explode (arma1i, SFX.FIRE)
	Explode (arma2i, SFX.FIRE)
end
