--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "weaponheibok"

local weaponDef = {
	name = [[Laser]],
	areaOfEffect = 30,
	beamDecay = 0.8,
	beamlaser = 0.8,
	beamTime = 0.1,
	beamttl = 18,
	coreThickness = 0,
	craterBoost = 0,
	craterMult = 0,
	
	damage = {
		default = 2500,
		heavyarmor = 3600,
		lightarmor = 1400,
		torrearmor = 2800,
	},
	
	--explosionGenerator = [[custom:flashslow]],
	fireStarter = 25,
	impactOnly = true,
	impulseBoost = 0,
	impulseFactor = 0.4,
	interceptedByShieldType = 1,
	largeBeamLaser = true,
	laserFlareSize = 12,
	lineOfSight = true,
	minIntensity = 1,
	noSelfDamage = true,
	range = 830,
	reloadtime = 6.5,
	renderType = 0,
	rgbColor = [[0 0.1 1]],
	--soundStart = [[weapon/laser/pulse_laser2]],
	--soundStartVolume = 0.9,
	--soundTrigger = true,
	sweepfire = false,
	--texture1 = [[largelaser]],
	--texture2 = [[flare]],
	--texture3 = [[flare]],
	--texture4 = [[smallflare]],
	thickness = 8,
	tolerance = 18000,
	turret = true,
	weaponType = [[BeamLaser]],
	weaponVelocity = 800,
}

return lowerkeys({[weaponName] = weaponDef})
