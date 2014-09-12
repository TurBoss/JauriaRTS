
local weaponName = "weaponjuggernaut2"

local weaponDef = {
	
	name                    = "Lightningcannon",
	weaponType              = "LightningCannon",
	
	Accuracy=800,
	movingAccuracy=120,
	--damage
	
	damage = {
		default = 180,
		heavyarmor = 25,
		lightarmor = 158,
		torrearmor = 85,
	},
	areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.8,
	range                   = 300,
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
	
	rgbColor				= [[1 1 0]],
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
