
local weaponName = "weapondt62"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = [[Cannon]],
	
	Accuracy=100,
	movingAccuracy=200,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 15,
		heavyarmor = 3,
		lightarmor = 18,
	},
	areaOfEffect            = 150,
	
	--physics
	
	weaponVelocity          = 700,
	reloadtime              = 2,
	range                   = 500,
--	sprayAngle              = 45,
	weaponaceleration       = 80,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0.5 0 0.2]],
	size                    = 12,
	stages                  = 8,
	intensity               = 10,
	separation              = 0,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
