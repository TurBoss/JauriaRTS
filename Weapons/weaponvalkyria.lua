
local weaponName = "weaponvalkyria"

local weaponDef = {
	
	name                    = "Laser Valkyria",
	weaponType              = "LaserCannon",
	
	Accuracy=100,
	movingAccuracy=200,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 34,
		heavyarmor = 28,
		lightarmor = 42,
		torrearmor = 32,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 1200,
	reloadtime              = 0.3,
	range                   = 375,
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
