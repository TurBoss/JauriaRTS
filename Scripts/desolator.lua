local root = piece "root"

local base = piece "base"

local piei = piece "piei"

local pied = piece "pied"

local hombros = piece "hombros"

local caderas = piece "caderas"

local piernad = piece "piernad"

local piernai = piece "piernai"


--pieces used by the weapon:

local flare1i = piece "flare1i"

local flare1d = piece "flare1d"

local flare2i = piece "flare2i"

local flare2d = piece "flare2d"

local flare3i = piece "flare3i"

local flare3d = piece "flare3d"


local misil1i = piece "misil1i"

local misil1d = piece "misil1d"

local misil2i = piece "misil2i"

local misil2d = piece "misil2d"

local misil3i = piece "misil3i"

local misil3d = piece "misil3d"


local active_barrel1 = 1		--the barrel that the next shot will be fired from
local active_barrel2 = 1		--the barrel that the next shot will be fired from

local number_of_barrels = 3		--how many barrel there are in total


local wheel_speed = math.rad(180)

local SIG_AIM1 = 1
local SIG_AIM2 = 2

local smoke = SFX.CEG

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
	if (active_barrel1 == 1) then
		--Spring.Echo ("torpedo1")
		return flare1d
	end
	if (active_barrel1 == 2) then
		--Spring.Echo ("torpedo2")
		return flare2d
	end
	if (active_barrel1 == 3) then
		--Spring.Echo ("torpedo2")
		return flare3d
	end
end

function script.QueryWeapon2()
	if (active_barrel2 == 1) then
		--Spring.Echo ("torpedo1")
		return flare1i
	end
	if (active_barrel2 == 2) then
		--Spring.Echo ("torpedo2")
		return flare2i
	end
	if (active_barrel2 == 3) then
		--Spring.Echo ("torpedo2")
		return flare3i
	end
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
--switch to the next barrel:
	active_barrel1 = active_barrel1 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (active_barrel1 > number_of_barrels) then active_barrel1 = 1 end
	
	if (active_barrel1 == 1) then
	
		EmitSfx(flare1d, smoke)
		Hide(misil1i)
		Sleep(1000)
		Show(misil1i)
		
	end
	if (active_barrel1 == 2) then
	
		EmitSfx(flare2d, smoke)
		Hide(misil2i)
		Sleep(1000)
		Show(misil2i)
		
	end
	if (active_barrel1 == 3) then
	
		EmitSfx(flare3d, smoke)
		Hide(misil3i)
		Sleep(1000)
		Show(misil3i)
		
	end
end
function script.FireWeapon2()
--switch to the next barrel:
	active_barrel2 = active_barrel2 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (active_barrel2 > number_of_barrels) then active_barrel2 = 1 end
	
	if (active_barrel2 == 1) then
	
		EmitSfx(flare1i, smoke)
		Hide(misil1d)
		Sleep(1000)
		Show(misil1d)
		
	end
	if (active_barrel2 == 2) then
	
		EmitSfx(flare2i, smoke)
		Hide(misil2d)
		Sleep(1000)
		Show(misil2d)
		
	end
	if (active_barrel2 == 3) then
	
		EmitSfx(flare3i, smoke)
		Hide(misil3d)
		Sleep(1000)
		Show(misil3d)
		
	end
end

function script.StartMoving(heading)
	Turn(base, z_axis, heading, math.rad(180))
end

function script.StopMoving()
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (base, SFX.SHATTER)	
	Explode (misil1i, SFX.FIRE)
	Explode (misil2i, SFX.FIRE)
	Explode (misil3i, SFX.FIRE)	
	Explode (misil1d, SFX.FIRE)
	Explode (misil2d, SFX.FIRE)
	Explode (misil3d, SFX.FIRE)
	Explode (hombros, SFX.SHATTER)



end

