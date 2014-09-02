local root = piece "root"

local base = piece "base"

local rueda_1 = piece "piei"

local rueda_2 = piece "pied"

local hombros = piece "hombros"

local caderas = piece "caderas"

local piernad = piece "piernad"

local piernai = piece "piernai"


--pieces used by the weapon:

local flare1 = piece "flare1"

local flare2 = piece "flare2"

local misil1 = piece "misil1"

local misil2 = piece "misil2"


local active_barrel1 = 1		--the barrel that the next shot will be fired from
local active_barrel2 = 1		--the barrel that the next shot will be fired from
local active_barrel2 = 1		--the barrel that the next shot will be fired from

local number_of_barrels = 2		--how many barrel there are in total


local wheel_speed = math.rad(180)

local SIG_AIM1 = 1
local SIG_AIM2 = 2


function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return base
end

function script.AimFromWeapon2() 
	return base
end

function script.QueryWeapon1() 
	return flare1
end

function script.QueryWeapon2() 
	return flare2
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	
	Turn(base, z_axis, heading, math.rad(180))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, z_axis)
	
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM2)
	SetSignalMask(SIG_AIM2)
	
	Turn(base, z_axis, heading, math.rad(180))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, z_axis)
	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
end
function script.FireWeapon2()
end

function script.StartMoving(heading)
end

function script.StopMoving()
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (base, SFX.SHATTER)	
	Explode (misil1, SFX.FIRE)
	Explode (misil2, SFX.FIRE)
	Explode (hombros, SFX.SHATTER)



end

