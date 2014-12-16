
local weaponName = "weapondt62"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = "Cannon",
	
	Accuracy=80,
	movingAccuracy=120,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 1100,
		heavyarmor = 1200,
		lightarmor = 220,
		torrearmor = 115,
	},
	areaOfEffect            = 160,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 3.2,
	range                   = 465,
	--sprayAngle              = 45,
	weaponaceleration       = 80,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	--burst                   = 2,
	--burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0.5 0 0.2]],
	size                    = 12,
	stages                  = 8,
	intensity               = 10,
	separation              = 0,
	
	explosionGenerator			= [[custom:genericshellexplosion-small-red]],
	
	--sounds
	
	soundStart              = "plasma_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
