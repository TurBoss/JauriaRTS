local bola = piece('bola');

local ojo1 = piece('ojo1');
local ojo2 = piece('ojo2');

local pipa1d = piece('pipa1d');
local pipa2d = piece('pipa2d');
local pipa3d = piece('pipa3d');
local pipa1i = piece('pipa1i');
local pipa2i = piece('pipa2i');
local pipa3i = piece('pipa3i');

local propulsor = piece('propulsor');

local tapas = piece('tapas');

local tentaculos = piece('tentaculos');

local flare1d = piece('flare1d');
local flare2d = piece('flare2d');
local flare3d = piece('flare3d');

local flare1i = piece('flare1i');
local flare2i = piece('flare2i');
local flare3i = piece('flare3i');

local root = piece('root');

local wheel_speed = math.rad(180)

local SIG_AIM_1 = 1
local SIG_AIM_2 = 2
local SIG_AIM_3 = 4
local SIG_AIM_4 = 8
local SIG_AIM_5 = 16
local SIG_AIM_6 = 32

function script.Create()
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return pipa1d
end

function script.AimFromWeapon2() 
	return pipa2d
end

function script.AimFromWeapon3() 
	return pipa3d
end

function script.AimFromWeapon4() 
	return pipa1i
end

function script.AimFromWeapon5() 
	return pipa2i
end

function script.AimFromWeapon6() 
	return pipa3i
end




function script.QueryWeapon1() 

	return flare1d
end

function script.QueryWeapon2() 

	return flare2d
end

function script.QueryWeapon3() 

	return flare3d
end

function script.QueryWeapon4() 

	return flare1i
end

function script.QueryWeapon5() 

	return flare2i
end

function script.QueryWeapon6() 

	return flare3i
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

function script.FireWeapon5()
end

function script.FireWeapon6()
end




function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM_1)
	SetSignalMask(SIG_AIM_1)
	Turn(bola, z_axis, heading, math.rad(60))
	
	--Turn(pipa1d, z_axis, heading, math.rad(80))
	Turn(pipa1d, x_axis, -pitch, math.rad(80))
	
	--wait until the weapon is pointed in the right direction
	
	WaitForTurn (bola, z_axis)
	--WaitForTurn (pipa1d, z_axis)
	WaitForTurn (pipa1d, x_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	Signal(SIG_AIM_2)
	SetSignalMask(SIG_AIM_2)
	--Turn(pipa2d, z_axis, heading, math.rad(80))
	Turn(pipa2d, x_axis, -pitch, math.rad(80))
	--WaitForTurn (pipa2d, z_axis)
	WaitForTurn (pipa2d, x_axis)
	WaitForTurn (bola, z_axis)
	return true
end

function script.AimWeapon3( heading, pitch )
	Signal(SIG_AIM_3)
	SetSignalMask(SIG_AIM_3)
	--Turn(pipa3d, z_axis, heading, math.rad(80))
	Turn(pipa3d, x_axis, -pitch, math.rad(80))
	--WaitForTurn (pipa3d, z_axis)
	WaitForTurn (pipa3d, x_axis)
	WaitForTurn (bola, z_axis)
	return true
end

function script.AimWeapon4( heading, pitch )
	Signal(SIG_AIM_4)
	SetSignalMask(SIG_AIM_4)
	--Turn(pipa1i, z_axis, heading, math.rad(80))
	Turn(pipa1i, x_axis, -pitch, math.rad(80))
	--WaitForTurn (pipa1i, z_axis)
	WaitForTurn (pipa1i, x_axis)
	WaitForTurn (bola, z_axis)
	return true
end

function script.AimWeapon5( heading, pitch )
	Signal(SIG_AIM_5)
	SetSignalMask(SIG_AIM_5)
	--Turn(pipa2i, z_axis, heading, math.rad(80))
	Turn(pipa2i, x_axis, -pitch, math.rad(80))
	--WaitForTurn (pipa2i, z_axis)
	WaitForTurn (pipa2i, x_axis)
	WaitForTurn (bola, z_axis)
	return true
end

function script.AimWeapon6( heading, pitch )
	Signal(SIG_AIM_6)
	SetSignalMask(SIG_AIM_6)
	--Turn(pipa3i, z_axis, heading, math.rad(80))
	Turn(pipa3i, x_axis, -pitch, math.rad(80))
	--WaitForTurn (pipa3i, z_axis)
	WaitForTurn (pipa3i, x_axis)
	WaitForTurn (bola, z_axis)
	return true
end



function script.StartMoving(heading)

end

function script.StopMoving()

end

----death animation
function script.Killed(recentDamage, maxHealth)

	Explode (bola, SFX.SHATTER)
	Explode (ojo1, SFX.FIRE)
	Explode (ojo2, SFX.FIRE)
	Explode (propulsor, SFX.FIRE)
	Explode (tapas, SFX.FIRE)
end
