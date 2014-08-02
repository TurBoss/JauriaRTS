local bola = piece('bola');

local ojo1 = piece('ojo1');
local ojo2 = piece('ojo2');

local pipas_der = piece('pipas_der');
local pipas_izq = piece('pipas_izq');

local propulsor = piece('propulsor');

local tapas = piece('tapas');

local tentaculos = piece('tentaculos');

local flarelaser1 = piece('flarelaser1');
local flareflame2 = piece('flareflame2');
local flaremetralleta3 = piece('flaremetralleta3');

local flarecanon4 = piece('flarecanon4');
local flareflame5 = piece('flareflame5');
local flaremetralleta6 = piece('flaremetralleta6');

local root = piece('root');

local wheel_speed = math.rad(180)

local SIG_AIM = 1

function script.Create()
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return bola
end

function script.AimFromWeapon2() 
	return bola
end

function script.AimFromWeapon3() 
	return bola
end

function script.AimFromWeapon4() 
	return bola
end

function script.AimFromWeapon5() 
	return bola
end

function script.AimFromWeapon6() 
	return bola
end




function script.QueryWeapon1() 

	return flarelaser1
end

function script.QueryWeapon2() 

	return flareflame2
end

function script.QueryWeapon3() 

	return flaremetralleta3
end

function script.QueryWeapon4() 

	return flarecanon4
end

function script.QueryWeapon5() 

	return flareflame5
end

function script.QueryWeapon6() 

	return flaremetralleta6
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




function script.AimWeapon1( heading )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(bola, z_axis, heading, math.rad(280))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (bola, z_axis)
	return true
end

function script.AimWeapon2( heading )
	WaitForTurn (bola, z_axis)
	return true
end

function script.AimWeapon3( heading )
	WaitForTurn (bola, z_axis)
	return true
end

function script.AimWeapon4( heading )
	WaitForTurn (bola, z_axis)
	return true
end

function script.AimWeapon5( heading )
	WaitForTurn (bola, z_axis)
	return true
end

function script.AimWeapon6( heading )
	WaitForTurn (bola, z_axis)
	return true
end



function script.StartMoving(heading)

end

function script.StopMoving()

end

----death animation
function script.Killed(recentDamage, maxHealth) 
	Spring.PlaySoundFile("sounds/wsight.ogg")
	Explode (bola, SFX.SHATTER)
	Explode (pipas_der, SFX.FIRE)
	Explode (pipas_izq, SFX.FIRE)
	Explode (ojo1, SFX.FIRE)
	Explode (ojo2, SFX.FIRE)
	Explode (propulsor, SFX.FIRE)
	Explode (tapas, SFX.FIRE)
end
