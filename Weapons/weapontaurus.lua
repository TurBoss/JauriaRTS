local weaponName="weapontaurus"

local weaponDef={
	name="weapontaurus",
	weaponType=[[MissileLauncher]],

	Accuracy=50,
	movingAccuracy=80,
	
	InterceptedByShieldType= 4,
	
	--Physic/flight path
	range=480,
	reloadtime=2.2,
	weaponVelocity=1100,
	startVelocity=600,
	weaponAcceleration=480,
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
	

	--commandfire=true,

	----DAMAGE
	
	damage={
		default=620,
		heavyarmor = 530,
		lightarmor = 810,
		torrearmor = 580,
	},
	areaOfEffect=95,
	craterMult=0,
	
	--?FIXME***
	
	lineOfSight=true,


	--sound
	
	soundHit="boom_gfx",
	soundStart = "shoot_gfx",
}

return lowerkeys ({[weaponName]=weaponDef})
