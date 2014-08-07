
local weaponName = "weaponheik"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = "LaserCannon",
	
	Accuracy=50,
	movingAccuracy=75,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 500,
		heavyarmor = 600,
		lightarmor = 800,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 1600,
	reloadtime              = 0.1,
	range                   = 320,
--	sprayAngle              = 45,
	weaponaceleration       = 1200,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
--	craterMult              = 100,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 0 1]],
	size                    = 1.8,
	stages                  = 4,
	intensity               = 3,
	separation              = 0.8,
	
	--sounds
	
	soundStart              = "metralleta_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
