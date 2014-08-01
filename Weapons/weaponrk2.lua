
local weaponName = "weaponrk2"

local weaponDef = {
	
	name                    = "misil RK-2",
	weaponType              = "Cannon",
	
	Accuracy=150,
	movingAccuracy=200,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 300,
		heavyarmor = 600,
		lightarmor = 200,
	},
	--areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 350,
	reloadtime              = 2,
	range                   = 320,
	--sprayAngle              = 45,
	weaponaceleration       = 120,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	highTrajectory          = 0.5,
	--burst                   = 2,
	--burstrate               = 1.5,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0.5 0 0]],
	size                    = 5,
	stages                  = 5,
	intensity               = 1,
	separation              = 0,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
