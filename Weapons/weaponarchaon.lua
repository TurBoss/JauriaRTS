
local weaponName = "weaponarchaon"

local weaponDef = {
	
	name                    = "Rayo Reaper",
	weaponType              = "BeamLaser",
	
	Accuracy=20,
	movingAccuracy=20,
	
	--damage
	
	avoidFeature = false,
	
	damage = {
		default = 560,
		heavyarmor = 465,
		lightarmor = 485,
		torrearmor = 420,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.1,
	range                   = 420,
--	sprayAngle              = 45,
	weaponaceleration       = 300,
	tolerance               = 18000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[1 0 0]],
	size                    = 4.3,
	stages                  = 1,
	intensity               = 8,
	separation              = 0.8,
	thickness               = 9,
	coreThickness           = 0.35,
	laserFlareSize          = 10,
	--largeBeamLaser          = true,
	
	--sounds
	
	soundStart              = "metralleta_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
