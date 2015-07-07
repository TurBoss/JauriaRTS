
local weaponName = "weapondt6"

local weaponDef = {

	name                    = "metralletaNM-1",
	weaponType              = "DGun",

	Accuracy=50,
	movingAccuracy=80,

	--damage

	avoidFeature = false,

	damage = {
		default = 145,
		heavyarmor = 30,
		lightarmor = 430,
		torrearmor = 25,
	},
	areaOfEffect            = 40,

	--physics

	weaponVelocity          = 600,
	reloadtime              = 0.3,
	range                   = 465,
--	sprayAngle              = 45,
	--weaponaceleration       = 80,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
--	burst                   = 2,
--	burstrate               = 0.08,
	--proyectiles             = 2,

	--apperance

	rgbColor2                = [[1 0 0.1]],
	size                    = 10,
	stages                  = 4,
	intensity               = 0.5,
	separation              = 0.5,
	explosionScar			= true,

	--explosionGenerator		= "custom:humo",
	--explosiongenerator			= [[custom:genericshellexplosion-small]],
	--sounds

	soundStart              = "disparo_gfx",

	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
