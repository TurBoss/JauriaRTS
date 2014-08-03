
local weaponName = "weaponnk3"

local weaponDef = {
	
	name                    = "misilNK-3",
	weaponType              = "Cannon",
	
	Accuracy=400,
	movingAccuracy=500,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 280,
		heavyarmor = 220,
		lightarmor = 350,
	},
	areaOfEffect            = 60,
	
	--physics
	
	weaponVelocity          = 280,
	reloadtime              = 3.8,
	range                   = 360,
--	sprayAngle              = 45,
	weaponaceleration       = 120,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	highTrajectory          = 0.5,
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
