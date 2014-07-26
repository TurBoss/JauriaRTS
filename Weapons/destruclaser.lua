--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "destruclaser"

local weaponDef = {

	name                    = "destruclaser",
	weaponType              = "BeamLaser",
	
	--damage
	
	damage = {
		default = 8,
	},
	areaOfEffect            = 0,
	
	--physics
	
	beamTime				= 0.1,
	beqamTTL				= 100,
	laserFlareSize			= 10,
	largeBeamLaser			= true,
	weaponVelocity          = 300,
	reloadtime              = 0.2,
	range                   = 300,
	sprayAngle              = 300,
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
