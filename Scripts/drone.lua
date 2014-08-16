local root = piece('root');

local chasis = piece('chasis');
local cabina = piece('cabina');

local antena = piece('antena');


function script.Create()
end

function script.StartMoving(heading)
	Turn(chasis, z_axis, heading, math.rad(280))

end

function script.StopMoving()

end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (chasis, SFX.SHATTER)
	Explode (cabina, SFX.FIRE)
end
