local root = piece "root"
local base = piece "base"

--pieces used by the weapon:

local panel = piece "panel"
local cabina = piece "cabina"
local torre = piece "torre"

local flare1 = piece "flare1"
local flare2 = piece "flare2"
local flare3 = piece "flare3"
local flare4 = piece "flare4"
local flare5 = piece "flare5"
local flare6 = piece "flare6"
local flare7 = piece "flare7"
local flare8 = piece "flare8"

local misil1 = piece "misil1"
local misil2 = piece "misil2"
local misil3 = piece "misil3"
local misil4 = piece "misil4"
local misil5 = piece "misil5"
local misil6 = piece "misil6"
local misil7 = piece "misil7"
local misil8 = piece "misil8"

local active_barrel = 1		--the barrel that the next shot will be fired from
local number_of_barrels = 8		--how many barrel there are in total

function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return torre
end

function script.QueryWeapon1() 
	if (active_barrel == 1) then
		return flare1
	end
	if (active_barrel == 2) then
		return flare2
	end
	if (active_barrel == 3) then
		return flare3
	end
	if (active_barrel == 4) then
		return flare4
	end
	if (active_barrel == 5) then
		return flare5
	end
	if (active_barrel == 6) then
		return flare6
	end
	if (active_barrel == 7) then
		return flare7
	end
	if (active_barrel == 8) then
		return flare8
	end
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Turn(torre, z_axis, heading, math.rad(180))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torre, z_axis)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	--switch to the next barrel:
	active_barrel = active_barrel + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (active_barrel > number_of_barrels) then active_barrel = 1 end
	
	if (active_barrel == 1) then
		Hide (misil1)
		Move (misil1, y_axis, 4)
		Sleep (3000)
		Show (misil1)
		Move (misil1, y_axis, 0,30)
	end
	if (active_barrel == 2) then
		Hide (misil2)
		Move (misil2, y_axis, 4)
		Sleep (3000)
		Show (misil2)
		Move (misil2, y_axis, 0,30)
	end
	if (active_barrel == 3) then
		Hide (misil3)
		Move (misil3, y_axis, 4)
		Sleep (3000)
		Show (misil3)
		Move (misil3, y_axis, 0,30)
	end
	if (active_barrel == 4) then
		Hide (misil4)
		Move (misil4, y_axis, 4)
		Sleep (3000)
		Show (misil4)
		Move (misil4, y_axis, 0,30)
	end
	if (active_barrel == 5) then
		Hide (misil5)
		Move (misil5, y_axis, 4)
		Sleep (3000)
		Show (misil5)
		Move (misil5, y_axis, 0,30)
	end
	if (active_barrel == 6) then
		Hide (misil6)
		Move (misil6, y_axis, 4)
		Sleep (3000)
		Show (misil6)
		Move (misil6, y_axis, 0,30)
	end
	if (active_barrel == 7) then
		Hide (misil7)
		Move (misil7, y_axis, 4)
		Sleep (3000)
		Show (misil7)
		Move (misil7, y_axis, 0,30)
	end
	if (active_barrel == 8) then
		Hide (misil8)
		Move (misil8, y_axis, 5)
		Sleep (3000)
		Show (misil8)
		Move (misil8
		, y_axis, 0,30)
	end
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)
	WaitForTurn (base, x_axis)
	Explode (base, SFX.SHATTER)
	Explode (panel, SFX.FIRE)
	Explode (cabina, SFX.FIRE)
	Explode (torre, SFX.FIRE)
end
