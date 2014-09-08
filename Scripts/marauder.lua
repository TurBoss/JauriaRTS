local root = piece "root"

local base = piece "base"

local capa = piece "capa"

--pieces used by the weapon:

local canon = piece "canon"
local canon1d = piece "canon1d"
local canon2d = piece "canon2d"
local canon1i = piece "canon1i"
local canon2i = piece "canon2i"

local flare1d = piece "flare1d"
local flare2d = piece "flare2d"

local flare1i = piece "flare1i"
local flare2i = piece "flare2i"

local active_barrel1 = 1		--the barrel that the next shot will be fired from
local active_barrel2 = 1		--the barrel that the next shot will be fired from
local number_of_barrels = 2		--how many barrel there are in total

local SIG_AIM1 = 1
local SIG_AIM2 = 2
local SIG_AIM3 = 4
local SIG_AIM4 = 8

local smoke = SFX.CEG

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
	if (active_barrel1 == 1) then
		--Spring.Echo ("torpedo1")
		return flare1d
	end
	if (active_barrel1 == 2) then
		--Spring.Echo ("torpedo2")
		return flare2d
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
		Move(canon1d, y_axis, 2)
		Sleep(150)
		Move(canon1d, y_axis, 0, 20)
	end
	if (active_barrel1 == 2) then
		EmitSfx(flare2d, smoke)
		
		Move(canon2d, y_axis, 2)
		Sleep(150)
		Move(canon2d, y_axis, 0, 20)
	end
end
function script.FireWeapon2()
--switch to the next barrel:
	active_barrel2 = active_barrel2 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (active_barrel2 > number_of_barrels) then active_barrel2 = 1 end
	
	if (active_barrel2 == 1) then
		EmitSfx(flare1i, smoke)
		Move(canon1i, y_axis, 2)
		Sleep(150)
		Move(canon1i, y_axis, 0, 20)
	end
	if (active_barrel2 == 2) then
		EmitSfx(flare2i, smoke)
		Move(canon2i, y_axis, 2)
		Sleep(150)
		Move(canon2i, y_axis, 0, 20)
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
	Explode (capa, SFX.FIRE)
	Explode (canon, SFX.FIRE)
end

