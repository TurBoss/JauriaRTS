
local weaponName = "weapondt6"

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
	areaOfEffect            = 80,
	
	--physics
	
	weaponVelocity          = 700,
	reloadtime              = 0.5,
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
	
	rgbColor                = [[1 0 0.1]],
	size                    = 8,
	stages                  = 8,
	intensity               = 10,
	separation              = 1.6,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
