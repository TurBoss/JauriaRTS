
local weaponName = "weaponst62"

local weaponDef = {
	
	name                    = "Cañon ST-6",
	weaponType              = "Cannon",
	
	Accuracy=150,
	movingAccuracy=200,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 250,
		heavyarmor = 400,
		lightarmor = 250,
	},
	areaOfEffect            = 80,
	
	--physics
	
	weaponVelocity          = 350,
	reloadtime              = 1,
	range                   = 450,
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
	
	rgbColor                = [[1 0.5 0]],
	size                    = 6,
	stages                  = 6,
	intensity               = 5,
	separation              = 1,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
