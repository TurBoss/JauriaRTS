local base = piece "base"

local llamas = piece "llamas"

local misil = piece "misil"

local piernas = piece "piernas"

--pieces used by the weapon:

local flare1 = piece "flare1"

local flare2 = piece "flare2"

local SIG_AIM = 1


function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return base
end

function script.QueryWeapon1() 
	return flare1
end

function script.AimFromWeapon2() 
	return base
end

function script.QueryWeapon2() 
	return flare2
end
--

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(base, z_axis, heading, math.rad(350))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, z_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM2)
	SetSignalMask(SIG_AIM2)
	Turn(base, z_axis, heading, math.rad(350))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, z_axis)
	return true
end




--called after the weapon has fired
function script.FireWeapon1()

end

function script.FireWeapon2()

end


function script.StartMoving(heading)
	Turn (base, z_axis, heading, math.rad(80))


end

function script.StopMoving()


end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (base, SFX.SHATTER)	
	Explode (llamas, SFX.FIRE)
	Explode (piernas, SFX.SHATTER)


end

