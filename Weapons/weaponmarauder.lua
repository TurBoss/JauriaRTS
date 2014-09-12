
local weaponName = "weaponmarauder"

local weaponDef = {
	
	name                    = "weaponmarauder",
	weaponType              = "Cannon",
	
	Accuracy=30,
	movingAccuracy=50,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 85,
		heavyarmor = 172,
		lightarmor = 41,
		torrearmor = 110,
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
