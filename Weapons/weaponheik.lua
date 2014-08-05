
local weaponName = "weaponheik"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = "LaserCannon",
	
	Accuracy=100,
	movingAccuracy=200,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 500,
		heavyarmor = 180,
		lightarmor = 260,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 1200,
	reloadtime              = 0.2,
	range                   = 280,
--	sprayAngle              = 45,
	weaponaceleration       = 500,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 100,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 0 1]],
	size                    = 1.5,
	stages                  = 4,
	intensity               = 3,
	separation              = 0.8,
	
	--sounds
	
	soundStart              = "metralleta_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
