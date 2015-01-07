
local weaponName = "weaponnk3"

local weaponDef = {
	
	name                    = "misilNK-3",
	weaponType              = "Cannon",
	
	Accuracy=80,
	movingAccuracy=100,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 120,
		heavyarmor = 115,
		lightarmor = 252,
		torrearmor = 135,
	},
	areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 280,
	reloadtime              = 2.6,
	range                   = 360,
--	sprayAngle              = 45,
	weaponaceleration       = 500,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	highTrajectory          = 0,
	burst                   = 2,
	burstrate               = 0.3,
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
