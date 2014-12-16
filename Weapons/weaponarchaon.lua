--http://springrts.com/wiki/Weapon_Variables#Cannon_.28Plasma.29_Visuals
local weaponName = "weaponarchaon"

local weaponDef = {
	name = [[Laser]],
	areaOfEffect = 60,
	beamDecay = 0.9,
	beamlaser = 1,
	beamTime = 0.1,
	beamttl = 50,
	coreThickness = 1.8,
	craterBoost = 0,
	craterMult = 0,
	
	damage = {
		default = 560,
		heavyarmor = 465,
		lightarmor = 560,
		torrearmor = 420,
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
	range = 450,
	reloadtime = 1.2,
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
