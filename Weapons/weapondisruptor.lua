
local weaponName = "weapondisruptor"

local weaponDef = {
	
	name                    = "Lightningcannon",
	weaponType              = "LightningCannon",
	
	Accuracy=1000,
	movingAccuracy=1000,
	
		paralyzer = true,
	paralyzeTime = 1.8,
	
	--damage
	
	damage = {
		default = 800,
		heavyarmor = 0,
		lightarmor = 0,
		torrearmor = 1,
	},
	areaOfEffect            = 20,
	
	--physics
	
	weaponVelocity          = 600,
	reloadtime              = 1.8,
	range                   = 180,
	--sprayAngle              = 45,
	--weaponaceleration       = 25,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	--burst                   = 2,
	--burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor				= [[0.2 0 1]],
	size                    = 0.1,
	--stages                  = 1,
	intensity               = 0.8,
	--separation              = 2,
	
	CegTag						= [[genericshellexplosion-large-sparks-burn]],
	explosionGenerator			= [[custom:lightning_stormbolt]],
	
	--sounds
	
	--soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
