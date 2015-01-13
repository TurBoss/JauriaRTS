--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "destruclaser"

local weaponDef = {

	name                    = "destruclaser",
	weaponType              = "LaserCannon",
	
	--damage
	
	Accuracy=50,
	movingAccuracy=80,
	
	damage = {
		default = 15.5,
		heavyarmor = 10.2,
		lightarmor = 14.8,
		torrearmor = 9,
	},
	areaOfEffect            = 0,
	
	--physics
	
	beamTime				= 0.2,
	beqamTTL				= 100,
	laserFlareSize			= 10,
	largeBeamLaser			= true,
	weaponVelocity          = 350,
	reloadtime              = 0.3,
	range                   = 350,
	--sprayAngle              = 300,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0,
	
	--apperance
	
	rgbColor                = [[0 1 0.1]],
	size                    = 4,
	stages                  = 20,
	separation              = 1,
}

return lowerkeys({[weaponName] = weaponDef})
