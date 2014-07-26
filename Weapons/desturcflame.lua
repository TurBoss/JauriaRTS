--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "destrucflame"

local weaponDef = {

	name                    = "destrucflame",
	weaponType              = "Flame",
	
	--damage
	
	damage = {
		default = 10,
		HeavyArmor = 1,
	},
	areaOfEffect            = 0,
	
	--physics
	sizeGrowth				= 3,
	weaponVelocity          = 500,
	reloadtime              = 0,
	range                   = 300,
	sprayAngle              = 300,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	
	--apperance
	
	rgbColor                = [[1 0.95 0.4]],
	size                    = 2,
	stages                  = 10,
	separation              = 0,
}

return lowerkeys({[weaponName] = weaponDef})
