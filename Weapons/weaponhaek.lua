
local weaponName = "weaponhaek"

local weaponDef = {
	
	name                    = "Metralletatorre",
	weaponType              = [[LightningCannon]],
	
	Accuracy=50,
	
	--damage
	
	damage = {
		default = 400,
		heavyarmor = 220,
		lightarmor = 540,
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
	
	rgbColor                = [[0 0.1 1]],
	size                    = 8,
	stages                  = 8,
	separation              = 1.5,
}

return lowerkeys({[weaponName] = weaponDef})
