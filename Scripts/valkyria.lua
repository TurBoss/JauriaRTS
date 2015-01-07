local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local brazalequipo = piece('brazalequipo');
local brazod = piece('brazod');
local brazoi = piece('brazoi');
local Camera = piece('Camera');
local cara = piece('cara');
local culod = piece('culod');
local culoi = piece('culoi');
local escudo = piece('escudo');
local escudo_001 = piece('escudo_001');
local espalda = piece('espalda');
local flare = piece('flare');
local Lamp = piece('Lamp');
local piernad = piece('piernad');
local piernai = piece('piernai');
local root = piece('root');
local zapatoarmadod = piece('zapatoarmadod');
local zapatoarmadoi = piece('zapatoarmadoi');

local wheel_speed = math.rad(180)

local SIG_AIM = 1

local smoke = SFX.CEG

function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return flare
end

function script.QueryWeapon1() 
	return flare
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	
	Turn(espalda, z_axis, heading, math.rad(320))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (espalda, z_axis)
	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	EmitSfx(flare, smoke)
end

function script.StartMoving(heading)
	

end

function script.StopMoving()

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)	
	Explode (canon, SFX.FIRE)
	Explode (cabeza, SFX.FIRE)
	Explode (rueda, SFX.FIRE)


end

