
local weaponName = "weaponheik"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = "LaserCannon",
	
	Accuracy=10,
	movingAccuracy=30,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 50,
		heavyarmor = 45,
		lightarmor = 88,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.2,
	range                   = 340,
--	sprayAngle              = 45,
	weaponaceleration       = 450,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 100,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 0 1]],
	size                    = 1,
	stages                  = 4,
	intensity               = 1.5,
	separation              = 1,
	
	--sounds
	
	soundStart              = "laser_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
