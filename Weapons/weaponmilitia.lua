
local weaponName = "weaponmilitia"

local weaponDef = {
	
	name                    = "Laser Militia",
	weaponType              = "LaserCannon",
	
	Accuracy=100,
	movingAccuracy=200,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 38,
		heavyarmor = 27.5,
		lightarmor = 31.2,
		torrearmor = 22,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.3,
	range                   = 250,
--	sprayAngle              = 45,
	weaponaceleration       = 850,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
--	craterMult              = 100,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 0 1]],
	size                    = 1,
	stages                  = 8,
	intensity               = 2,
	separation              = 1,
	
	--sounds
	
	soundStart              = "laser_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
