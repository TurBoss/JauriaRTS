local root = piece "root"

local chasis = piece "chasis"
local cabina = piece "cabina"
local cabinahierro = piece "cabinahierro"

local antena = piece "antena"
local ruedasa = piece "ruedasa"
local ruedasb = piece "ruedasb"
local ruedasc = piece "ruedasc"
local ruedasd = piece "ruedasd"

--pieces used by the weapon:

local armad = piece "armad"
local armai = piece "armai"
--local basearma = piece "basearma"
--local basearma = piece "basearmai"
local flared = piece "flared"
local flarei = piece "flarei"

local wheel_speed = math.rad(180)

local SIG_AIM1 = 1
local SIG_AIM2 = 2

local smoke = SFX.CEG

function script.Create()
	
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return armad
end

function script.AimFromWeapon2() 
	return armai
end

function script.QueryWeapon1() 
	return flared
end

function script.QueryWeapon2() 
	return flarei
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	
	Turn(cabinahierro, z_axis, heading, math.rad(80))
	--Turn(basearma, x_axis, -pitch, math.rad(80))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (cabinahierro, z_axis)
	--WaitForTurn (basearma, x_axis)

	
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM2)
	SetSignalMask(SIG_AIM2)
	
	Turn(cabinahierro, z_axis, heading, math.rad(80))
	--Turn(basearma, x_axis, -pitch, math.rad(80))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (cabinahierro, z_axis)
	--WaitForTurn (basearma, x_axis)

	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
	--EmitSfx(flare, smoke)
	
	Move(armad, y_axis, 4)
	Sleep(150)
	Move(armad, y_axis, 0, 20)
	
end

function script.FireWeapon2()
	
	--EmitSfx(flarei, smoke)
	
	Move(armai, y_axis, 4)
	Sleep(150)
	Move(armai, y_axis, 0, 20)
	
end

function script.StartMoving(heading )
	Turn (cabinahierro, z_axis, heading, math.rad(80))
	Turn(armad, x_axis, 0, math.rad(80))
	Turn(armai, x_axis, 0, math.rad(80))
	Spin(ruedasa, x_axis, wheel_speed)
	Spin(ruedasb, x_axis, wheel_speed)
	Spin(ruedasc, x_axis, wheel_speed)
	Spin(ruedasd, x_axis, wheel_speed)
end

function script.StopMoving()
	StopSpin (ruedasa,x_axis)
	StopSpin (ruedasb,x_axis)
	StopSpin (ruedasc,x_axis)
	StopSpin (ruedasd,x_axis)
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (chasis, SFX.SHATTER)
	
	Explode (cabina, SFX.FIRE)
	Explode (cabinahierro, SFX.FIRE)
	Explode (armad, SFX.FIRE)
	Explode (armai, SFX.FIRE)

end

