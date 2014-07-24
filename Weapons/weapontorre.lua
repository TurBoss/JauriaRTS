
local weaponName = "weapontorre"

local weaponDef = {
	
	name                    = "Metralletatorre",
	weaponType              = [[Cannon]],
	
	Accuracy=2600,
	
	--damage
	
	damage = {
		default = 130,
		HeavyArmor = 0,
	},
	areaOfEffect            = 40,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.5,
	range                   = 500,
	sprayAngle              = 45,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	
	--apperance
	
	rgbColor                = [[1 0 0]],
	size                    = 8,
	stages                  = 8,
	separation              = 1.5,
}

return lowerkeys({[weaponName] = weaponDef})
