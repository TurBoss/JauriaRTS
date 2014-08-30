
local weaponName = "weaponbesieger"

local weaponDef = {
	
	name                    = "Golpe Ariete",
	weaponType              = "Cannon",
	
	Accuracy=20,
	movingAccuracy=40,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 22,
		heavyarmor = 7,
		lightarmor = 25,
		torrearmor = 800,
	},
	areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 350,
	reloadtime              = 4,
	range                   = 130,
--	sprayAngle              = 45,
	weaponaceleration       = 100,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[1 0.2 0.08]],
	size                    = 3.3,
	stages                  = 0,
	intensity               = 3.6,
	separation              = 0,
	
	--sounds
	
	soundStart              = "metralleta_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
