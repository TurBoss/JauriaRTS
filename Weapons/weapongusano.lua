
local weaponName = "weapongusano"

local weaponDef = {

	name                    = "metralletaNM-1",
	weaponType              = "Flame",

	Accuracy=50,
	movingAccuracy=80,

	--damage

	avoidFeature = false,

	damage = {
		default = 0,
		heavyarmor = 32,
		lightarmor = 41,
		torrearmor = 0,
	},
	areaOfEffect            = 40,

	--physics

	weaponVelocity          = 560,
	reloadtime              = 0.08,
	range                   = 360,
--	sprayAngle              = 45,
	--weaponaceleration       = 80,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	burst                   = 1,
	--burstrate               = 0.18,
	--proyectiles             = 2,

	--apperance

	rgbColor                = [[0 1 0]],
	rgbColor2               = [[0 1 0]],
	size                    = 15,
	sizeGrowth              = 2,
	stages                  = 10,
	intensity               = 8,
	separation              = 1,
	explosionScar			= true,
	texture1                = "flamegreen",
	--explosionGenerator		= "custom:humo",
	--explosiongenerator			= [[custom:genericshellexplosion-small]],
	--sounds

	soundStart              = "flame_gfx",

	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
