--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "weaponst61"

local weaponDef = {

	name                    = "weaponst61",
	weaponType              = "Cannon",
	
	--damage
	
	damage = {
		default = 10,
		HeavyArmor = 1,
	},
	areaOfEffect            = 8,
	
	--physics
	
	weaponVelocity          = 500,
	reloadtime              = 0.05,
	range                   = 500,
	sprayAngle              = 45,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	
	--apperance
	
	rgbColor                = [[0.1 0.3 1]],
	size                    = 2,
	stages                  = 20,
	separation              = 3,
}

return lowerkeys({[weaponName] = weaponDef})
