
local weaponName = "weaponheibok"

local weaponDef = {
	
	name                    = "misil RK-2",
	weaponType              = "Cannon",
	
	Accuracy=400,
	movingAccuracy=400,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 450,
		heavyarmor = 520,
		lightarmor = 480,
	},
	areaOfEffect            = 60,
	
	--physics
	myGravity               = 1,
	weaponVelocity          = 850,
	startVelocity           = 550,
	reloadtime              = 0.5,
	range                   = 800,
	sprayAngle              = 180,
	weaponaceleration       = 620,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	highTrajectory          = 0,
	--burst                   = 5,
	--burstrate               = 0.5,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 0.1 1]],
	size                    = 12,
	stages                  = 6,
	intensity               = 0.2,
	separation              = 1.2,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
