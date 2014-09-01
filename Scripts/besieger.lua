local root = piece "root"

local caseta = piece "caseta"

local rueda1 = piece "rueda1"

local rueda2 = piece "rueda2"

--pieces used by the weapon:

local ariete = piece "ariete"

local flare = piece "flare"

local base = piece "base"

local basepalo = piece "basepalo"




local wheel_speed = math.rad(180)

local SIG_AIM1 = 1
local SIG_AIM2 = 2


function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return base
end

function script.QueryWeapon1() 
	return ariete
end


--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	
	Turn(base, z_axis, heading, math.rad(80))
	Turn(basepalo, x_axis, -pitch, math.rad(80))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, x_axis)
	WaitForTurn (basepalo, x_axis)
	
	return true
end


--called after the weapon has fired
function script.FireWeapon1()
	Move (ariete, y_axis, -60, 200)
	Sleep (450)
	Move (ariete, y_axis, 0, 80)
end


function script.StartMoving(heading)
	
	Spin(rueda1, x_axis, math.rad(180))
	Spin(rueda2, x_axis, math.rad(180))

end

function script.StopMoving()
	StopSpin (rueda1,x_axis)
	StopSpin (rueda2,x_axis)

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (caseta, SFX.SHATTER)	



end

