
local weaponName = "weaponheibok"

local weaponDef = {
	
	name                    = "misil RK-2",
	weaponType              = "Cannon",
	
	Accuracy=30,
	movingAccuracy=50,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 520,
		heavyarmor = 560,
		lightarmor = 480,
	},
	areaOfEffect            = 160,
	
	--physics
	myGravity               = 1,
	weaponVelocity          = 620,
	reloadtime              = 3,
	range                   = 620,
	--sprayAngle              = 45,
	weaponaceleration       = 620,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	highTrajectory          = 0,
	--burst                   = 2,
	--burstrate               = 1.5,
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
