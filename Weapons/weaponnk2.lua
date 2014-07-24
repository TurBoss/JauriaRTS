
local weaponName = "weaponnk2"

local weaponDef = {
	
	name                    = "metralletaNK-2",
	weaponType              = [[Cannon]],
	
	Accuracy=2200,
	
	--damage
	
	damage = {
		default = 80,
		HeavyArmor = 0,
	},
--	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 400,
	reloadtime              = 0.8,
	range                   = 310,
	sprayAngle              = 45,
	weaponaceleration       = 25,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 100,
--	burst                   = 2,
--	burstrate               = 1.5,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[1 0.2 0]],
	size                    = 8,
	stages                  = 8,
	intensity               = 0.5,
	separation              = 1.5,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
