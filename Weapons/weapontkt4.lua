local weaponName="weapontkt4"

local weaponDef={
	name="weapontkt4",
	weaponType=[[MissileLauncher]],

	Accuracy=500,
	movingAccuracy=800,
	
	--Physic/flight path
	range=480,
	reloadtime=4,
	weaponVelocity=1100,
	startVelocity=600,
	weaponAcceleration=500,
	flightTime=6,
	BurnBlow=0,
	FixedLauncher=false,
	trajectoryHeight=0.4,
	dance=0,
	wobble=0,
	tolerance=16000,
	tracks=false,
	Turnrate=16000,
	collideFriendly=true,

	----APPEARANCE
	
	model="cobete.dae",
	smokeTrail=true,
	--explosionGenerator="custom:explosion1",
	CegTag="light1",

	----TARGETING
	
	turret=true,
	CylinderTargeting=true,
	avoidFeature=false,
	avoidFriendly=false,
	
	soundStart              = "disparo_gfx",

	--commandfire=true,

	----DAMAGE
	
	damage={
		default=850,
		heavyarmor = 800,
		lightarmor = 400,
	},
	areaOfEffect=150,
	craterMult=0,
	--?FIXME***
	
	lineOfSight=true,


	--sound
	
	soundHit="boom_gfx",
	soundStart = "misil_gfx",
}

return lowerkeys ({[weaponName]=weaponDef})
