
local weaponName = "weaponnk3"

local weaponDef = {
	
	name                    = "misilNK-3",
	weaponType              = "Cannon",
	
	Accuracy=80,
	movingAccuracy=100,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 260,
		heavyarmor = 220,
		lightarmor = 320,
	},
	areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 520,
	reloadtime              = 2.6,
	range                   = 360,
--	sprayAngle              = 45,
	weaponaceleration       = 250,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	highTrajectory          = 0.5,
--	burst                   = 2,
--	burstrate               = 1.5,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[1 0.2 0]],
	size                    = 8,
	stages                  = 8,
	intensity               = 0.5,
	separation              = 1.5,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
