
local weaponName = "weaponmortero"

local weaponDef = {

	name= "weaponmortero",
	weaponType=[[MissileLauncher]],

	Accuracy=100,
	movingAccuracy=700,

	----DAMAGE

	damage={
		default=1780,
		heavyarmor = 2130,
		lightarmor = 2680,
		torrearmor = 3450,
	},
	areaOfEffect=210,


	--physics

	range=1000,
	reloadtime=50,
	weaponVelocity=200,
	startVelocity=150,
	weaponAcceleration=480,
	flightTime=28,
	Turnrate=30000,
	trajectoryHeight=0.8,
	tolerance               = 10000,
	lineOfSight             = true,
	turret                  = true,
	craterMult              = 0.5,
	--burst                   = 2,
	--burstrate               = 0.08,
	--proyectiles             = 1,
	commandfire = true,

	--apperance

	model="cobete.dae",
	smokeTrail=true,
	--explosionGenerator="custom:explosion1",
	CegTag="light1",
	--sounds

	--soundStart              = "disparo_gfx",

	collideFriendly=true,
}
return lowerkeys({[weaponName] = weaponDef})
