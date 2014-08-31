local base = piece('base');
local canon0 = piece('canon0');
local canon1 = piece('canon1');
local canon2 = piece('canon2');
local canon3 = piece('canon3');
local canon4 = piece('canon4');
local canon5 = piece('canon5');
local canon6 = piece('canon6');
local flare0 = piece('flare0');
local flare1 = piece('flare1');
local flare2 = piece('flare2');
local flare3 = piece('flare3');
local flare4 = piece('flare4');
local flare5 = piece('flare5');
local flare6 = piece('flare6');




local SIG_AIM1 = 1
local SIG_AIM2 = 2
local SIG_AIM3 = 4
local SIG_AIM4 = 8
local SIG_AIM5 = 16
local SIG_AIM6 = 32
local SIG_AIM0 = 64


function script.Create()
    
end
         

function script.StartMoving(heading)

end

function script.StopMoving()

end


---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return canon1
end

function script.AimFromWeapon2() 
	return canon2
end

function script.AimFromWeapon3() 
	return canon3
end

function script.AimFromWeapon4() 
	return canon4
end

function script.AimFromWeapon5() 
	return canon5
end

function script.AimFromWeapon6() 
	return canon6
end

function script.AimFromWeapon7() 
	return canon0
end

---

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

function script.QueryWeapon5() 
	return flare5
end

function script.QueryWeapon6() 
	return flare6
end

function script.QueryWeapon7() 
	return flare0
end


--called after the weapon has fired
--


function script.FireWeapon1()
end

function script.FireWeapon2()
end

function script.FireWeapon3()
	Move(canond, y_axis, 4)
	Sleep(100)
	Move(canond, y_axis, 0, 20)
end

function script.FireWeapon4()
	Move(canoni, y_axis, 4)
	Sleep(100)
	Move(canoni, y_axis, 0, 20)
end

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(cabeza, z_axis, heading, math.rad(200))
	Turn(canond, x_axis, -pitch, math.rad(200))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canond, x_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	Turn(canoni, x_axis, -pitch, math.rad(200))
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canoni, x_axis)
	return true
end

function script.AimWeapon3( heading, pitch )
	--make sure the aiming animation is only run once
	Turn(canond, x_axis, -pitch, math.rad(200))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canond, x_axis)
	return true
end

function script.AimWeapon4( heading, pitch )
	Turn(canoni, x_axis, -pitch, math.rad(200))
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canoni, x_axis)
	return true
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (cabeza, SFX.SHATTER)
	Explode (piernad, SFX.FIRE)
	Explode (piernai, SFX.FIRE)
end
            
