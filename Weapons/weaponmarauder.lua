
local weaponName = "weaponmarauder"

local weaponDef = {
	
	name                    = "weaponmarauder",
	weaponType              = "Cannon",
	
	Accuracy=30,
	movingAccuracy=50,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 90,
		heavyarmor = 120,
		lightarmor = 40,
		torrearmor = 110,
	},
	--areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 550,
	reloadtime              = 1,
	range                   = 320,
	--sprayAngle              = 45,
	weaponaceleration       = 215,
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
	size                    = 4.5,
	stages                  = 5,
	intensity               = 3,
	separation              = 0,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
