
local weaponName = "weaponjuggernaut1"

local weaponDef = {
	
	name                    = "Lanzamisiles",
	weaponType              = "Cannon",
	
	Accuracy=20,
	movingAccuracy=60,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 730,
		heavyarmor = 780,
		lightarmor = 145,
		torrearmor = 680,
	},
	areaOfEffect            = 70,
	
	--physics
	
	weaponVelocity          = 850,
	reloadtime              = 3.2,
	range                   = 280,
--	sprayAngle              = 45,
	weaponaceleration       = 600,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0.6 0.2 0.1]],
	size                    = 15,
	stages                  = 5,
	intensity               = 0.3,
	separation              = 0.8,
	explosionScar			= true,
	
	--explosionGenerator		= "custom:humo",
	--explosiongenerator			= [[custom:genericshellexplosion-small]],
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
