
local weaponName = "weaponjuggernaut1"

local weaponDef = {
	
	name                    = "Lanzamisiles",
	weaponType              = "Cannon",
	
	Accuracy=50,
	movingAccuracy=80,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 1020,
		heavyarmor = 530,
		lightarmor = 320,
		torrearmor = 500,
	},
	--areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 1,
	range                   = 365,
--	sprayAngle              = 45,
	weaponaceleration       = 300,
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
