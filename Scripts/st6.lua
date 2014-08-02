local nave = piece "nave"

local arma1 = piece "arma1"
local arma2 = piece "arma2"

local torreta1 = piece "torreta1"
local torreta2 = piece "torreta2"

local flare1 = piece "flare1"
local flare2 = piece "flare2"

local flare_1_1 = piece "flare_1_1"
local flare_1_2 = piece "flare_1_2"

local flare_2_1 = piece "flare_2_1"
local flare_2_2 = piece "flare_2_2"

local active_cano = 1		--the barrel that the next shot will be fired from
local active_cano1 = 1
local active_cano2 = 1
local number_of_cano = 2		--how many barrel there are in total

function script.Create()
	--Spring.Echo ("CREATE MOTO!")

end

---AIMING & SHOOTING---
function script.AimFromWeapon1()
	return nave
end

function script.AimFromWeapon2()
	return torreta1
end

function script.AimFromWeapon3()
	return torreta2
end

function script.QueryWeapon1()
	
	if (active_cano == 1) then
		return flare1
	end
	if (active_cano == 2) then
		return flare2
	end
end

function script.QueryWeapon2()
	
	if (active_cano1 == 1) then
		return flare_1_1
	end
	if (active_cano1 == 2) then
		return flare_1_2
	end
end

function script.QueryWeapon3()
	
	if (active_cano2 == 1) then
		return flare_2_1
	end
	if (active_cano2 == 2) then
		return flare_2_2
	end
end

--called after the weapon has fired
function script.FireWeapon1()
	--switch to the next barrel:
	active_cano = active_cano + 1
	--if all barrels have fired, start the cyclus from the beginning:
	
	if (active_cano > number_of_cano) then
		active_cano = 1
	end
	
end

function script.FireWeapon2()
	--switch to the next barrel:
	active_cano1 = active_cano1 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	
	if (active_cano1 > number_of_cano) then
		active_cano1 = 1
	end
	
end

function script.FireWeapon3()
	--switch to the next barrel:
	active_cano2 = active_cano2 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	
	if (active_cano2 > number_of_cano) then
		active_cano2 = 1
	end
	
end

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	--Turn(nave, z_axis, heading, math.rad(225))
	Turn(arma1, x_axis, -pitch, math.rad(225))
	Turn(arma2, x_axis, -pitch, math.rad(225))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (arma1, x_axis)
	WaitForTurn (arma2, x_axis)
	--WaitForTurn (nave, z_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Turn(torreta1, z_axis, heading, math.rad(225))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torreta1, z_axis)
	return true
end

function script.AimWeapon3( heading, pitch )
	--make sure the aiming animation is only run once
	Turn(torreta2, z_axis, heading, math.rad(225))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torreta2, z_axis)
	return true
end

function script.Killed()
	Explode (nave, SFX.SHATTER)
	Explode (torreta1, SFX.FIRE)
	Explode (torreta2, SFX.FIRE)
	Explode (arma1, SFX.FIRE)
	Explode (arma2, SFX.FIRE)
end
