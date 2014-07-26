
local weaponName = "destrucmetralleta"

local weaponDef = {
	
	name                    = "destrucmetralleta",
	weaponType              = [[Cannon]],
	
	Accuracy=100,
	movingAccuracy=200,
	--damage
	
	damage = {
		default = 3.2,
		heavyarmor = 3.2,
		ligtharmor = 4.2,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 500,
	reloadtime              = 0.15,
	range                   = 300,
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
	
	rgbColor                = [[0 0.5 1]],
	size                    = 2.5,
	stages                  = 4,
	intensity               = 1.5,
	separation              = 1,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
