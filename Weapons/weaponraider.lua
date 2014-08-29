
local weaponName = "weaponraider"

local weaponDef = {
	
	name                    = "Metralleta Raider",
	weaponType              = "Cannon",
	
	Accuracy=20,
	movingAccuracy=40,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 22,
		heavyarmor = 7,
		lightarmor = 25,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 350,
	reloadtime              = 0.14,
	range                   = 185,
--	sprayAngle              = 45,
	weaponaceleration       = 60,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[1 0.2 0.08]],
	size                    = 3.3,
	stages                  = 30,
	intensity               = 3.6,
	separation              = 0.8,
	
	--sounds
	
	soundStart              = "metralleta_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
