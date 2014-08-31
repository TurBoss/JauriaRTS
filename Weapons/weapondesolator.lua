
local weaponName = "weapondesolator"

local weaponDef = {
	
	name                    = "Gatling Desolator",
	weaponType              = "Cannon",
	
	Accuracy=1600,
	movingAccuracy=2500,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 35,
		heavyarmor = 12,
		lightarmor = 63,
		torrearmor = 11,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 300,
	reloadtime              = 0.1,
	range                   = 480,
	--sprayAngle              = 45,
	weaponaceleration       = 60,
	tolerance               = 300,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	--burst                   = 2,
	--burstrate               = 0.05,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0.05 0.05 0.5]],
	size                    = 2,
	stages                  = 1,
	intensity               = 4,
	separation              = 0.1,
	
	--sounds
	
	soundStart              = "metralleta_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
