
local weaponName = "weaponputris"

local weaponDef = {
	
	name                    = "Mortero Putrido",
	weaponType              = "Cannon",
	
	Accuracy=400,
	movingAccuracy=400,
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 620,
		heavyarmor = 260,
		lightarmor = 780,
		torrearmor = 1,
	},
	areaOfEffect            = 220,
	
	--physics
	myGravity               = 0.75,
	weaponVelocity          = 760,
	startVelocity           = 500,
	reloadtime              = 12,
	range                   = 680,
	sprayAngle              = 180,
	weaponaceleration       = 600,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.0,
	highTrajectory          = 1,
	--burst                   = 5,
	--burstrate               = 0.5,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[0.11 0.9 0.07]],
	size                    = 17,
	stages                  = 3,
	intensity               = 0.5,
	separation              = 0.3,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
		--CegTag						= [[genericshellexplosion-large-sparks-burn]],
		explosionGenerator			= [[custom:areaputris]],
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
