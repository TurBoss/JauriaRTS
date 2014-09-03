
local weaponName = "weaponjuggernaut1"

local weaponDef = {
	
	name                    = "Lanzamisiles",
	weaponType              = "Cannon",
	
	Accuracy=20,
	movingAccuracy=60,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 200,
		heavyarmor = 230,
		lightarmor = 80,
		torrearmor = 180,
	},
	areaOfEffect            = 80,
	
	--physics
	
	weaponVelocity          = 850,
	reloadtime              = 1,
	range                   = 365,
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
	
	rgbColor2                = [[1 0 0.1]],
	size                    = 10,
	stages                  = 4,
	intensity               = 0.5,
	separation              = 0.5,
	explosionScar			= true,
	
	--explosionGenerator		= "custom:humo",
	--explosiongenerator			= [[custom:genericshellexplosion-small]],
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
