
local weaponName = "weaponjuggernaut"

local weaponDef = {
	
	name                    = "Gatling Juggernaut",
	weaponType              = "Cannon",
	
	Accuracy=2200,
	movingAccuracy=5000,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 35,
		heavyarmor = 10,
		lightarmor = 40,
		torrearmor = 10,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 300,
	reloadtime              = 0.1,
	range                   = 320,
	--sprayAngle              = 45,
	weaponaceleration       = 60,
	tolerance               = 300,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	burst                   = 2,
	burstrate               = 0.05,
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
