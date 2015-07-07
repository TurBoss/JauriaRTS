
local weaponName = "weaponadept"

local weaponDef = {

	name                    = "Adepto Gun",
	weaponType              = "Cannon",

	Accuracy=20,
	movingAccuracy=40,

	--damage

	avoidFeature = false,

	damage = {
		default = 16,
		heavyarmor = 8,
		lightarmor = 18,
		torrearmor = 16,
	},
--	areaOfEffect            = 10,

	--physics

	weaponVelocity          = 600,
	reloadtime              = 0.2,
	range                   = 255,
--	sprayAngle              = 45,
	--weaponaceleration       = 300,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,

	--apperance

	rgbColor                = [[1 0.2 0.08]],
	size                    = 3.3,
	stages                  = 30,
	intensity               = 3.6,
	separation              = 0.8,

	--sounds

	soundStart              = "metralleta_gfx",

	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
