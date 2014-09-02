
local weaponName = "weaponmarauder"

local weaponDef = {
	
	name                    = "Hacha del Caos",
	weaponType              = "Cannon",
	
	Accuracy=20,
	movingAccuracy=20,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 460,
		heavyarmor = 580,
		lightarmor = 410,
		torrearmor = 430,
	},
	areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 350,
	reloadtime              = 1,
	range                   = 200,
--	sprayAngle              = 45,
	weaponaceleration       = 100,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[1 0.5 0.3]],
	size                    = 3,
	stages                  = 12,
	intensity               = 5,
	separation              = 3,
	
	--sounds
	
	--soundStart              = "metralleta_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
