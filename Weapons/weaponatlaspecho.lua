
local weaponName = "weaponatlaspecho"

local weaponDef = {
	
	name                    = "weaponatlaspecho",
	weaponType              = "LightningCannon",
	
	Accuracy=100,
	movingAccuracy=200,
	--damage
	
	damage = {
		default = 0,
		heavyarmor = 460,
		lightarmor = 260,
	},
	areaOfEffect            = 240,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 12,
	range                   = 468,
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
	
	rgbColor				= [[1 0 0]],
	--size                    = 0.1,
	--stages                  = 1,
	intensity               = 1,
	--separation              = 2,
	
	CegTag						= [[genericshellexplosion-large-sparks-burn]],
	explosionGenerator			= [[custom:lightning_stormbolt]],
	
	--sounds
	
	--soundStart              = "disparo_gfx",
	
	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
