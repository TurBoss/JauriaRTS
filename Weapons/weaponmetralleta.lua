
local weaponName = "weaponmetralleta"

local weaponDef = {
	
	name                    = "Lightningcannon",
	weaponType              = "LaserCannon",
	
	Accuracy=100,
	movingAccuracy=200,
	--damage
	
	damage = {
		default = 32,
		heavyarmor = 42,
		lightarmor = 48,
	},
	areaOfEffect            = 0,
	
	--physics
	
	weaponVelocity          = 2000,
	reloadtime              = 0.2,
	range                   = 340,
	sprayAngle              = 45,
	--weaponaceleration       = 25,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	--burst                   = 2,
	--burstrate               = 0.08,
	proyectiles             = 2,
	
	--apperance
	
	rgbColor				= [[99 0 0]],
	size                    = 30,
	--stages                  = 1,
	--intensity               = 1,
	--separation              = 2,
	
	--CegTag						= [[genericshellexplosion-large-sparks-burn]],
	explosionGenerator			= [[custom:genericshellexplosion-large-sparks-burn]],
	
	--sounds
	
	--soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
