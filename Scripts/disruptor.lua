local root = piece "root"

local disco = piece "disco"
local flare1 = piece "flare1"
local flare2 = piece "flare2"
local flare3 = piece "flare3"
local flare4 = piece "flare4"

local wheel_speed = math.rad(180)

local SIG_AIM = 1

function script.Create()
	Spin(disco, z_axis, wheel_speed)
end


---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return disco
end

function script.AimFromWeapon2() 
	return disco
end

function script.AimFromWeapon3() 
	return disco
end

function script.AimFromWeapon4() 
	return disco
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


function script.QueryWeapon4() 
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

function script.StartMoving(heading)

end

function script.StopMoving()

end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (disco, SFX.SHATTER)
	
end

