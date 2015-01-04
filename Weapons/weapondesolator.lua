local weaponName="weapondesolator"

local weaponDef={
	name="weapontkt4",
	weaponType=[[MissileLauncher]],

	Accuracy=80,
	movingAccuracy=120,
	
	InterceptedByShieldType= 4,
	
	--Physic/flight path
	range=445,
	reloadtime=1.7,
	weaponVelocity=620,
	startVelocity=580,
	weaponAcceleration=400,
	flightTime=8,
	BurnBlow=0,
	FixedLauncher=false,
	trajectoryHeight=0.8,
	dance=0,
	wobble=0,
	tolerance=16000,
	tracks=false,
	Turnrate=16000,
	collideFriendly=true,
	
	--burst =       3,
	--burstrate = 0.4,

	----APPEARANCE
	
	model="cohete1.dae",
	smokeTrail=false,
	--explosionGenerator="custom:explosion1",
	CegTag="light1",

	----TARGETING
	
	turret=true,
	CylinderTargeting=true,
	avoidFeature=false,
	avoidFriendly=false,
	

	--commandfire=true,

	----DAMAGE
	
	damage={
		default=220,
		heavyarmor = 585,
		lightarmor = 665,
		torrearmor = 345,
	},
	--areaOfEffect=30,
	craterMult=0,
	
	--?FIXME***
	
	lineOfSight=true,


	--sound
	
	soundHit="boom_gfx",
	soundStart = "shoot_gfx",
}

return lowerkeys ({[weaponName]=weaponDef})
