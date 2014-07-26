
local weaponName = "weapontorre"

local weaponDef = {
	
	name                    = "Metralletatorre",
	weaponType              = [[Cannon]],
	
	Accuracy=500,
	
	--damage
	
	damage = {
		default = 100,
		heavyarmor = 130,
	},
	areaOfEffect            = 30,
	
	--physics
	
	weaponVelocity          = 800,
	reloadtime              = 0.5,
	range                   = 450,
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
