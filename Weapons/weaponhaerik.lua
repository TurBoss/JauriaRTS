
local weaponName = "weaponhaerik"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = "Cannon",
	
	Accuracy=50,
	movingAccuracy=80,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 150,
		heavyarmor = 85,
		lightarmor = 140,
	},
	areaOfEffect            = 0,
	
	--physics
	
	weaponVelocity          = 500,
	reloadtime              = 0.6,
	range                   = 480,
--	sprayAngle              = 45,
	weaponaceleration       = 250,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 0.1 1]],
	size                    = 8,
	stages                  = 4,
	intensity               = 1.5,
	separation              = 0.5,
	explosionScar			= true,
	
	--explosionGenerator		= "custom:humo",
	--explosiongenerator			= [[custom:genericshellexplosion-small]],
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
