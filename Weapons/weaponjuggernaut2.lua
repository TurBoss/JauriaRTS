
local weaponName = "weaponjuggernaut2"

local weaponDef = {
	
	name                    = "Lightningcannon",
	weaponType              = "Cannon",
	
	Accuracy=800,
	movingAccuracy=1200,
	--damage
	
	damage = {
		default = 230,
		heavyarmor = 45,
		lightarmor = 250,
		torrearmor = 85,
	},
	areaOfEffect            = 100,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.7,
	range                   = 300,
	--sprayAngle              = 45,
	--weaponaceleration       = 25,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	--burst                   = 2,
	--burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor				= [[0.8 0.42 0.1]],
	size                    = 12,
	stages                  = 1,
	intensity               = 6,
	separation              = 1,
	
	CegTag						= [[genericshellexplosion-large-sparks-burn]],
	explosionGenerator			= [[custom:lightning_stormbolt]],
	
	--sounds
	
	--soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
