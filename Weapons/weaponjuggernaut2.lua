
local weaponName = "weaponjuggernaut2"

local weaponDef = {
	
	name                    = "Lanzallamas",
	weaponType              = "Flame",
	
	Accuracy=1000,
	movingAccuracy=700,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 7,
		heavyarmor = 1,
		lightarmor = 12,
		torrearmor = 3.2,
	},
	areaOfEffect            = 360,
	
	--physics
	
	weaponVelocity          = 600,
	reloadtime              = 0.05,
	range                   = 320,
--	sprayAngle              = 45,
	weaponaceleration       = 70,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor2                = [[0.8 0.2 0.15]],
	size                    = 10,
	stages                  = 4,
	intensity               = 0.2,
	separation              = 4,
	explosionScar			= true,
	sizeGrowth              = 10,
	
	--explosionGenerator		= "custom:humo",
	--explosiongenerator			= [[custom:genericshellexplosion-small]],
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
