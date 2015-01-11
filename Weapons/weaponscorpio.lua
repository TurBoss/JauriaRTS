local weaponName="weaponscorpio"

local weaponDef={
	name="weaponscorpio",
	weaponType=[[MissileLauncher]],

	Accuracy=50,
	movingAccuracy=80,
	
	InterceptedByShieldType= 4,
	
	--Physic/flight path
	range=380,
	reloadtime=4.2,
	weaponVelocity=320,
	startVelocity=120,
	weaponAcceleration=80,
	flightTime=6,
	BurnBlow=0,
	FixedLauncher=false,
	trajectoryHeight=0.2,
	dance=15,
	wobble=15,
	tolerance=16000,
	tracks=true,
	Turnrate=16000,
	collideFriendly=true,

	----APPEARANCE
	
	model="disco.dae",
	--smokeTrail=true,
	--explosionGenerator="custom:explosion1",
	--CegTag="light1",

	----TARGETING
	
	turret=true,
	CylinderTargeting=true,
	avoidFeature=false,
	avoidFriendly=false,
	

	--commandfire=true,

	----DAMAGE
	
	damage={
		default=830,
		heavyarmor = 480,
		lightarmor = 1300,
		torrearmor = 800,
	},
	areaOfEffect=120,
	craterMult=0,
	
	--?FIXME***
	
	lineOfSight=true,


	--sound
	
	soundHit="boom_gfx",
	soundStart = "shoot_gfx",
}

return lowerkeys ({[weaponName]=weaponDef})
