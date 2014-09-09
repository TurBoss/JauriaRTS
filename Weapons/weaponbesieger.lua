--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "weaponbesieger"

local weaponDef = {
	name = [[Laser]],
	areaOfEffect = 8,
	beamDecay = 0.9,
	beamlaser = 1,
	beamTime = 0.1,
	beamttl = 50,
	coreThickness = 0,
	craterBoost = 0,
	craterMult = 0,
	
	damage = {
		default = 225,
		heavyarmor = 190,
		lightarmor = 225,
		torrearmor = 820,
	},
	
	--explosionGenerator = [[custom:flashslow]],
	fireStarter = 30,
	impactOnly = true,
	impulseBoost = 0,
	impulseFactor = 0.4,
	interceptedByShieldType = 1,
	largeBeamLaser = true,
	laserFlareSize = 6,
	lineOfSight = true,
	minIntensity = 1,
	noSelfDamage = true,
	range = 120,
	reloadtime = 1.5,
	renderType = 0,
	rgbColor = [[1 0 0]],
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
	weaponVelocity = 500,
}

return lowerkeys({[weaponName] = weaponDef})
