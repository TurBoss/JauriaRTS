
local weaponName = "weaponnm1"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = [[Cannon]],
	
	Accuracy=100,
	movingAccuracy=200,
	--damage
	
	damage = {
		default = 5,
		heavyarmor = 5,
		ligtharmor = 5.5,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 500,
	reloadtime              = 0.2,
	range                   = 180,
--	sprayAngle              = 45,
	weaponaceleration       = 25,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 100,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 1 0.5]],
	size                    = 3,
	stages                  = 5,
	intensity               = 0.6,
	separation              = 1,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
