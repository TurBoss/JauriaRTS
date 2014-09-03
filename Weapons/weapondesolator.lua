local weaponName="weapondesolator"

local weaponDef={
	name="weapontkt4",
	weaponType=[[MissileLauncher]],

	Accuracy=500,
	movingAccuracy=800,
	
	InterceptedByShieldType= 4,
	
	--Physic/flight path
	range=455,
	reloadtime=1.3,
	weaponVelocity=650,
	startVelocity=580,
	weaponAcceleration=400,
	flightTime=8,
	BurnBlow=0,
	FixedLauncher=false,
	trajectoryHeight=0.4,
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
	smokeTrail=true,
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
		heavyarmor = 180,
		lightarmor = 215,
		torrearmor = 200,
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
