--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "destruclaser"

local weaponDef = {

	name                    = "destruclaser",
	weaponType              = "BeamLaser",
	
	--damage
	
	damage = {
		default = 10,
		heavyarmor = 12,
		lightarmor = 10,
	},
	areaOfEffect            = 0,
	
	--physics
	
	beamTime				= 0.1,
	beqamTTL				= 100,
	laserFlareSize			= 10,
	largeBeamLaser			= true,
	weaponVelocity          = 350,
	reloadtime              = 0.2,
	range                   = 350,
	--sprayAngle              = 300,
	tolerance               = 8000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	
	--apperance
	
	rgbColor                = [[1 0 1]],
	size                    = 4,
	stages                  = 20,
	separation              = 1,
}

return lowerkeys({[weaponName] = weaponDef})
