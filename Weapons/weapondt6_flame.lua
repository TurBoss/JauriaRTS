--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "weapondt6_flame"

local weaponDef = {

	name                    = "Flama",
	weaponType              = "Flame",
	
	--damage
	
	damage = {
		default = 10,
		HeavyArmor = 1,
	},
	areaOfEffect            = 0,
	
	--physics
	sizeGrowth				= 1.5,
	weaponVelocity          = 500,
	reloadtime              = 0,
	range                   = 500,
	sprayAngle              = 200,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	
	--apperance
	
	rgbColor                = [[1 0.95 0.4]],
	size                    = 3,
	stages                  = 10,
	separation              = 0,
}

return lowerkeys({[weaponName] = weaponDef})
