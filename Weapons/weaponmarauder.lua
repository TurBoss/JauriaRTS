
local weaponName = "weaponmarauder"

local weaponDef = {
	
	name                    = "Hacha del Caos",
	weaponType              = "Melee",
	
	Accuracy=20,
	movingAccuracy=40,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 190,
		heavyarmor = 310,
		lightarmor = 130,
		torrearmor = 240,
	},
	areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 350,
	reloadtime              = 1.4,
	range                   = 100,
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
	
	rgbColor                = [[1 0.2 0.08]],
	size                    = 3.3,
	stages                  = 0,
	intensity               = 3.6,
	separation              = 0,
	
	--sounds
	
	--soundStart              = "metralleta_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
