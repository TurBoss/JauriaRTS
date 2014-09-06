local root = piece "root"

local base = piece "base"

local ruedas = piece "ruedas"

local portal = piece "portal"

local flare = piece "flare"

local tubos = piece "tubos"




local wheel_speed = math.rad(180)

local SIG_AIM1 = 1
local SIG_AIM2 = 2


function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return portal
end

function script.QueryWeapon1() 
	return flare
end


--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	
	Turn(portal, z_axis, heading, math.rad(80))
	--Turn(basepalo, x_axis, -pitch, math.rad(80))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (portal, z_axis)
	--WaitForTurn (base, x_axis)
	
	return true
end


--called after the weapon has fired
function script.FireWeapon1()
	--Move (ariete, y_axis, -60, 200)
	--Sleep (450)
	--Move (ariete, y_axis, 0, 80)
end


function script.StartMoving(heading)
	Turn(portal, z_axis, heading, math.rad(80))
	
	Spin(ruedas, x_axis, math.rad(180))

end

function script.StopMoving()
	StopSpin (ruedas,x_axis)

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (base, SFX.SHATTER)	
	Explode (portal, SFX.FIRE)	


end

