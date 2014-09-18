
local weaponName = "weaponjuggernaut2"

local weaponDef = {
	
	name                    = "Lightningcannon",
	weaponType              = "Cannon",
	
	Accuracy=40,
	movingAccuracy=90,
	--damage
	
	damage = {
		default = 170,
		heavyarmor = 35,
		lightarmor = 210,
		torrearmor = 95,
	},
	areaOfEffect            = 0,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.5,
	range                   = 280,
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
	size                    = 3,
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
