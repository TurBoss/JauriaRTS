--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "weaponmilitia"

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
		default = 150,
		heavyarmor = 35,
		lightarmor = 140,
		torrearmor = 120,
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
	range = 290,
	reloadtime = 0.5,
	renderType = 0,
	rgbColor = [[0.5 0.5 1]],
	--soundStart = [[weapon/laser/pulse_laser2]],
	--soundStartVolume = 0.9,
	--soundTrigger = true,
	sweepfire = false,
	texture1 = [[laser3]],
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
