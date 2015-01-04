
local weaponName = "weaponcuellito"

local weaponDef = {
	
	name                    = "Lasercuellito",
	weaponType              = "LaserCannon",
	
	Accuracy=10,
	movingAccuracy=30,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 38,
		heavyarmor = 36,
		lightarmor = 38,
		torrearmor = 0,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.2,
	range                   = 260,
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
	
	rgbColor                = [[0 1 0.1]],
	size                    = 1,
	stages                  = 4,
	intensity               = 1.5,
	separation              = 1,
	
	--sounds
	
	soundStart              = "laser_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
