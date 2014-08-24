
local weaponName = "weaponheibok"

local weaponDef = {
	
	name                    = "misil RK-2",
	weaponType              = "Cannon",
	
	Accuracy=1200,
	movingAccuracy=1200,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 300,
		heavyarmor = 50,
		lightarmor = 250,
	},
	areaOfEffect            = 30,
	
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
