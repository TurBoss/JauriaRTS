
local weaponName = "weaponnk2"

local weaponDef = {
	
	name                    = "metralletaNK-2",
	weaponType              = [[Cannon]],
	
	--damage
	
	damage = {
		default = 80,
		HeavyArmor = 0,
	},
	areaOfEffect            = 10,
	
	--physics
	
	weaponVelocity          = 400,
	reloadtime              = 0.5,
	range                   = 310,
	sprayAngle              = 45,
	weaponaceleration       = 25,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 100,
	burst                   = 2,
	burstrate               = 1.5,
	--proyectiles             = 2,
	
	--apperance
	
	rgbColor                = [[1 0.2 0]],
	size                    = 6,
	stages                  = 10,
	intensity               = 0.6,
	separation              = 2,
	
	--sounds
	
	soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
