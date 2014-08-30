
local weaponName = "weaponhaek"

local weaponDef = {
	
	name                    = "Metralletatorre",
	weaponType              = [[EmgCannon]],
	
	Accuracy=50,
	
	--damage
	
	damage = {
		default = 1100,
		heavyarmor = 720,
		lightarmor = 540,
		torrearmor = 850,
	},
	areaOfEffect            = 140,
	
	--physics
	
	weaponVelocity          = 380,
	reloadtime              = 3.2,
	range                   = 410,
	sprayAngle              = 45,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	
	--apperance
	
	rgbColor                = [[0 0.1 1]],
	size                    = 13,
	stages                  = 12,
	separation              = 0,
	intensity               = 10,
}

return lowerkeys({[weaponName] = weaponDef})
