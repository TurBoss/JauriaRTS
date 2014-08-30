
local weaponName = "weaponhekor"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = "LaserCannon",
	
	Accuracy=100,
	movingAccuracy=200,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 38,
		heavyarmor = 24,
		lightarmor = 32,
		torrearmor = 28,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 1200,
	reloadtime              = 0.3,
	range                   = 350,
--	sprayAngle              = 45,
	weaponaceleration       = 850,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
--	craterMult              = 100,
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
