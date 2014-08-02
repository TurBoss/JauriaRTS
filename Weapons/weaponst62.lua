--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "weaponst62"

local weaponDef = {

	name                    = "weaponst62",
	weaponType              = "BeamLaser",
	
	--damage
	
	damage = {
		default = 10,
		HeavyArmor = 1,
	},
	areaOfEffect            = 0,
	
	--physics
	
	beamTime				= 0.1,
	beqamTTL				= 100,
	laserFlareSize			= 10,
	largeBeamLaser			= true,
	weaponVelocity          = 500,
	reloadtime              = 0.2,
	range                   = 350,
	sprayAngle              = 300,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	
	--apperance
	
	rgbColor                = [[1 0.95 0.4]],
	size                    = 4,
	stages                  = 20,
	separation              = 1,
}

return lowerkeys({[weaponName] = weaponDef})
