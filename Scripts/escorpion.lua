local cuerpo = piece('cuerpo');
local aguijon = piece('aguijon');
local cola = piece('cola');
local manos = piece('manos');
local pinzas = piece('pinzas');
local canon = piece('canon');
local flare1 = piece('flare1');
local flare2 = piece('flare2');
local patas = piece('patas');

local SIG_WALK = 1	--signal for the walk animation thread
local SIG_AIM = 2
local SIG_AIM2 = 4

local active_cano = 1		--the barrel that the next shot will be fired from
local number_of_cano = 2		--how many barrel there are in total


local smoke = SFX.CEG


function script.Create()
end

function script.StartMoving(heading)
	StartThread (caminapalante)
	Turn(root, z_axis, heading, math.rad(225))
end

function script.StopMoving()
	--Spring.Echo ("stopped walking!")
	Signal(SIG_WALK)
	StartThread(caminareset)
end

--called after the weapon has fired
function script.FireWeapon1()
	EmitSfx(flare_der, smoke)
end

function script.FireWeapon2()
	EmitSfx(flare_izq, smoke)
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return torre_der
end

function script.AimFromWeapon2() 
	return torre_izq
end

function script.QueryWeapon1() 
	return flare_der
end

function script.QueryWeapon2() 
	return flare_izq
end

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(torre_der, z_axis, heading, math.rad(350))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torre_der, z_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM2)
	SetSignalMask(SIG_AIM2)
	Turn(torre_izq, z_axis, heading, math.rad(350))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torre_izq, z_axis)
	return true
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (cuerpo, SFX.SHATTER)
	Explode (pinzas, SFX.FIRE)
	Explode (cola, SFX.FIRE)
end
            
