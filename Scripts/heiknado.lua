local root = piece "root"

local chasis = piece "chasis"
local cristal1 = piece "cristal1"
local cristal2 = piece "cristal2"
local segador = piece "segador"
local flare1 = piece "flare1"
local flare2 = piece "flare2"
local flare3 = piece "flare3"
local flare4 = piece "flare4"


--pieces used by the weapon:


local wheel_speed = math.rad(300)
local sega_speed = math.rad(480)


local SIG_AIM = 1

function script.Create()
	Spin(cristal1, z_axis, wheel_speed)
	Spin(segador, z_axis, sega_speed)
	Spin(cristal2, z_axis, -wheel_speed)
	Spin(chasis, z_axis, -wheel_speed)
end


---AIMING & SHOOTING---

function script.AimFromWeapon1() 
	return cristal1
end

function script.AimFromWeapon2() 
	return cristal1
end

function script.AimFromWeapon3() 
	return cristal1
end

function script.AimFromWeapon4() 
	return cristal1
end

function script.QueryWeapon1() 
	return root
end

function script.QueryWeapon2() 
	return flare1
end

function script.QueryWeapon3() 
	return flare2
end

function script.QueryWeapon4() 
	return flare3
end

function script.QueryWeapon5() 
	return flare4
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed

function script.AimWeapon1( heading, pitch )
	return true
end

function script.AimWeapon2( heading, pitch )
	return true
end

function script.AimWeapon3( heading, pitch )
	return true
end

function script.AimWeapon4( heading, pitch )
	return true
end

--called after the weapon has fired

function script.FireWeapon1()
	
end

function script.FireWeapon2()
	
end

function script.FireWeapon3()
	
end

function script.FireWeapon4()
	
end

function script.StartMoving(heading)
	--Turn (chasis, z_axis, heading, math.rad(200))


end

function script.StopMoving()

end

----death animation: fall over & explode

function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)	
	Explode (cristal1, SFX.FIRE)
	Explode (cristal2, SFX.FIRE)


end

