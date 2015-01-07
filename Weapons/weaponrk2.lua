
local weaponName = "weaponrk2"

local weaponDef = {
	
	name                    = "misil RK-2",
	weaponType              = "Cannon",
	
	Accuracy=30,
	movingAccuracy=50,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 119,
		heavyarmor = 280,
		lightarmor = 210,
		torrearmor = 220,
	},
	--areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 650,
	reloadtime              = 2.2,
	range                   = 240,
	--sprayAngle              = 45,
	weaponaceleration       = 520,
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
