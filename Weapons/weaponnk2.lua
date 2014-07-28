
local weaponName = "weaponnk2"

local weaponDef = {
	
	name                    = "metralletaNK-2",
	weaponType              = "Cannon",
	
	Accuracy=600,
	movingAccuracy=800,
	--damage
	
	damage = {
		default = 120,
		heavyarmor = 120,
		lightarmor = 80,
	},
	--areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 260,
	reloadtime              = 1.2,
	range                   = 360,
--	sprayAngle              = 45,
	weaponaceleration       = 120,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 100,
	highTrajectory          = 0,
--	burst                   = 2,
--	burstrate               = 1.5,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[1 0.2 0]],
	size                    = 8,
	stages                  = 8,
	intensity               = 0.5,
	separation              = 1.5,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
