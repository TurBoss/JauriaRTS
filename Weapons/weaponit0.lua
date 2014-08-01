
local weaponName = "weaponit0"

local weaponDef = {
	
	name                    = "Lightningcannon",
	weaponType              = "LightningCannon",
	
	Accuracy=100,
	movingAccuracy=200,
	--damage
	
	paralyzer = true,
	paralyzeTime = 3,
	
	damage = {
		default = 600,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 500,
	reloadtime              = 1,
	range                   = 220,
--	sprayAngle              = 45,
	weaponaceleration       = 25,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 100,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0 1 0.5]],
	size                    = 0.1,
	stages                  = 1,
	intensity               = 1,
	separation              = 2,
	
	--sounds
	
	--soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
