
local weaponName = "weapondt62"

local weaponDef = {
	
	name                    = "metralletaNM-1",
	weaponType              = "Cannon",
	
	Accuracy=80,
	movingAccuracy=120,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 400,
		heavyarmor = 600,
		lightarmor = 100,
	},
	areaOfEffect            = 200,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 3.5,
	range                   = 500,
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
