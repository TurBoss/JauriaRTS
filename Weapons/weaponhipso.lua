
local weaponName = "weaponhipso"

local weaponDef = {
	
	name                    = "Lightningcannon",
	weaponType              = "LightningCannon",
	
	Accuracy=100,
	movingAccuracy=200,
	--damage
	
	damage = {
		default = 200,
		heavyarmor = 230,
		lightarmor = 380,
	},
	areaOfEffect            = 0,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.5,
	range                   = 450,
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
	
	rgbColor				= [[0 0 1]],
	size                    = 0.01,
	--stages                  = 1,
	intensity               = 1,
	--separation              = 2,
	
	CegTag						= [[genericshellexplosion-large-sparks-burn]],
	explosionGenerator			= [[custom:lightning_stormbolt]],
	
	--sounds
	
	--soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
