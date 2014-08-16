
local weaponName = "weapondt6"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = "LaserCannon",
	
	Accuracy=50,
	movingAccuracy=80,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 200,
		heavyarmor = 5,
		lightarmor = 120,
	},
	areaOfEffect            = 40,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.3,
	range                   = 480,
--	sprayAngle              = 45,
	weaponaceleration       = 80,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor2                = [[1 0 0.1]],
	size                    = 5,
	stages                  = 8,
	intensity               = 10,
	separation              = 1.6,
	explosionScar			= true,
	
	--explosionGenerator		= "custom:humo",
	--explosiongenerator			= [[custom:genericshellexplosion-small]],
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
