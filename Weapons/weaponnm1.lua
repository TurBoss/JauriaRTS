
local weaponName = "weaponnm1"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = "Cannon",
	
	Accuracy=20,
	movingAccuracy=40,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 16,
		heavyarmor = 10.2,
		lightarmor = 14.8,
		torrearmor = 9.5,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 500,
	reloadtime              = 0.3,
	range                   = 220,
--	sprayAngle              = 45,
	weaponaceleration       = 25,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 100,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 1 0.5]],
	size                    = 2.5,
	stages                  = 4,
	intensity               = 1.5,
	separation              = 1,
	
	--sounds
	
	soundStart              = "metralleta_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
