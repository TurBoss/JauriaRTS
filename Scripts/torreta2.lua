local root = piece "root"
local torre = piece "torre"
--pieces used by the weapon:
local bola1 = piece "bola1"
local bola2 = piece "bola2"
local bola3 = piece "bola3"
local flare1 = piece "flare1"
local flare2 = piece "flare2"
local flare3 = piece "flare3"
local cabeza = piece "cabeza"


function script.Create()
	Spin(bola1, z_axis, math.rad(120))
	Spin(bola2, z_axis, math.rad(120))
	Spin(bola3, z_axis, math.rad(120))
	Spin(cabeza, z_axis, math.rad(-120))
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return bola1
end

function script.AimFromWeapon2() 
	return bola2
end

function script.AimFromWeapon3() 
	return bola3
end

function script.QueryWeapon1() 
	return flare1
end

function script.QueryWeapon2() 
	return flare2
end

function script.QueryWeapon3() 
	return flare3
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

--called after the weapon has fired
function script.FireWeapon1()
	
end

function script.FireWeapon2()
	
end

function script.FireWeapon3()
	
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)
	Explode (torre, SFX.SHATTER)
	Explode (bola1, SFX.FIRE)
	Explode (bola2, SFX.FIRE)
	Explode (bola3, SFX.FIRE)
end
