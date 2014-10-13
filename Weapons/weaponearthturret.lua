
local weaponName = "weaponearthturret"

local weaponDef = {
	
	name                    = "weaponearthturret",
	weaponType              = "LaserCannon",
	
	Accuracy=100,
	movingAccuracy=200,
	--damage
	
	damage = {
		default = 0,
		heavyarmor = 460,
		lightarmor = 260,
	},
	areaOfEffect            = 2,
	
	--physics
	
	weaponVelocity          = 2000,
	reloadtime              = 0.4,
	range                   = 440,
	sprayAngle              = 45,
	--weaponaceleration       = 25,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	--burst                   = 2,
	--burstrate               = 0.08,
	proyectiles             = 1,
	
	--apperance
	
	rgbColor				= [[0 99 0]],
	size                    = 50,
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
