
local weaponName = "weaponst61"

local weaponDef = {
	
	name                    = "laser ST-6",
	weaponType              = "Cannon",
	
	Accuracy=100,
	movingAccuracy=200,
	
	--damage
	
	noSelfDamage = true,
	avoidFeature = false,
	
	damage = {
		default = 18,
		heavyarmor = 6,
		lightarmor = 25,
	},
	areaOfEffect            = 40,
	
	--physics
	
	weaponVelocity          = 500,
	reloadtime              = 0.1,
	range                   = 450,
	--sprayAngle              = 45,
	weaponaceleration       = 25,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	--burst                   = 2,
	--burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 1 0.8]],
	size                    = 2.5,
	stages                  = 12,
	intensity               = 5,
	separation              = 4,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
