
local weaponName = "weaponheiknado"

local weaponDef = {
	
	name                    = "Lightningcannon",
	weaponType              = "Cannon",
	
	Accuracy=10,
	movingAccuracy=10,
	--damage
	
	damage = {
		default = 88,
		heavyarmor = 76,
		lightarmor = 92,
		torrearmor = 115,
	},
	areaOfEffect            = 15,
	avoidFeatures = false,
	--physics
	
	weaponVelocity          = 1000,
	reloadtime              = 0.2,
	range                   = 100,
	--sprayAngle              = 45,
	--weaponaceleration       = 25,
	tolerance               = 15000,
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
	
	soundStart              = "melee_gfx",
	
	CegTag						= [[genericshellexplosion-large-sparks-burn]],
	--explosionGenerator			= [[custom:lightning_stormbolt]],
	
	--sounds
	
	--soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
