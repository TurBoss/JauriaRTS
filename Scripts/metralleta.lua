local root = piece "root"
local base = piece "base"
local cargador = piece "cargador"

--pieces used by the weapon:
local plataforma = piece "plataforma"
local eje = piece "eje"
local canona = piece "canona"
local flarea = piece "flarea"
local canonb = piece "canonb"
local flareb = piece "flareb"

local SIG_AIM = 1


local smoke = SFX.CEG

local active_barrel = 1		--the barrel that the next shot will be fired from
local number_of_barrels = 2		--how many barrel there are in total

function script.Create()

end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return plataforma
end

function script.QueryWeapon1()
	if (active_barrel == 1) then
		--Spring.Echo ("torpedo1")
		return flarea
	end
	if (active_barrel == 2) then
		--Spring.Echo ("torpedo2")
		return flareb
	end
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	
	Turn(eje, z_axis, heading, math.rad(100))
	Turn(plataforma, x_axis, -pitch, math.rad(100))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (plataforma, x_axis)
	WaitForTurn (eje, z_axis)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
--switch to the next barrel:
	active_barrel = active_barrel + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (active_barrel > number_of_barrels) then active_barrel = 1 end
	
	if (active_barrel == 1) then
		EmitSfx(flarea, smoke)
		Move(canona, y_axis, 4, 20)
		Sleep(150)
		Move(canona, y_axis, 0, 20)
	end
	if (active_barrel == 2) then
		EmitSfx(flareb, smoke)
		Move(canonb, y_axis, 4, 20)
		Sleep(150)
		Move(canonb, y_axis, 0, 20)
	end
	
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)
	Explode (canona, SFX.SHATTER)
	Explode (canonb, SFX.SHATTER)
	Explode (eje, SFX.SHATTER)
	Explode (base, SFX.SHATTER)
	Explode (cargador, SFX.FIRE)
end
