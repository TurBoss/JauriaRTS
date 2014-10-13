local root = piece "root"

local chasis = piece "chasis"
local cristal = piece "cristal"


--pieces used by the weapon:

local arma = piece "arma"
local flare = piece "flare"

local wheel_speed = math.rad(180)

local SIG_AIM1 = 1
local SIG_AIM2 = 2

function script.Create()
	Spin(cristal, z_axis, wheel_speed)
end

---AIMING & SHOOTING---

function script.Shot(num)
	--Spring.Echo(num)
end

function script.AimFromWeapon()
	return arma
end

function script.QueryWeapon() 
	return flare
end
--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed

function script.AimWeapon(num, heading, pitch )
	--make sure the aiming animation is only run once
	if num == 1 then
		Signal(SIG_AIM1)
		SetSignalMask(SIG_AIM1)

		Turn(arma, z_axis, heading, math.rad(200))

		--wait until the weapon is pointed in the right direction
		WaitForTurn (arma, z_axis)
		return true
	elseif num == 2 then
		Signal(SIG_AIM2)
		SetSignalMask(SIG_AIM2)

		Turn(arma, z_axis, heading, math.rad(200))

		--wait until the weapon is pointed in the right direction
		WaitForTurn (arma, z_axis)
		return true
	end
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.FireWeapon2()
end













function script.StartMoving(heading)
	Turn (arma, z_axis, heading, math.rad(150))
end

function script.StopMoving()

end









----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)
	Explode (cristal, SFX.FIRE)
	Explode (arma, SFX.FIRE)


end

