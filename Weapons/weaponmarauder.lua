
local weaponName = "weaponmarauder"

local weaponDef = {
	
	name                    = "weaponmarauder",
	weaponType              = "Cannon",
	
	Accuracy=30,
	movingAccuracy=50,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 110,
		heavyarmor = 152,
		lightarmor = 60,
		torrearmor = 120,
	},
	--areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 550,
	reloadtime              = 0.9,
	range                   = 245,
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
	
	rgbColor                = [[1 0.25 0.1]],
	size                    = 3,
	stages                  = 6,
	intensity               = 10,
	separation              = 0,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
