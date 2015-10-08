local weaponName="weaponlz5"

local weaponDef={
	name="weaponlz5",
	weaponType=[[MissileLauncher]],
	
	InterceptedByShieldType= 4,

	Accuracy=50,
	movingAccuracy=50,
	
	--Physic/flight path
	range=1100,
	reloadtime=16,
	weaponVelocity=500,
	startVelocity=300,
	weaponAcceleration=50,
	flightTime=6,
	BurnBlow=0,
	FixedLauncher=false,
	trajectoryHeight=1.8,
	dance=0,
	wobble=0,
	tolerance=16000,
	tracks=true,
	Turnrate=16000,
	collideFriendly=true,
	--commandFire = true
	----APPEARANCE
	
	model="cohete.dae",
	smokeTrail=true,
	--explosionGenerator="custom:redsmoke",
	CegTag="light2",

	----TARGETING
	
	turret=true,
	CylinderTargeting=true,
	avoidFeature=false,
	avoidFriendly=false,

	--commandfire=true,

	----DAMAGE
	
	damage={
		default = 1780,
		heavyarmor = 2130,
		lightarmor = 2680,
		torrearmor = 3450,
	},
	areaOfEffect=210,
	craterMult=0,
	--?FIXME***
	
	
	lineOfSight=true,


	--sound
	
	soundHit="boom_gfx",
	soundStart = "misil_gfx",
}

return lowerkeys ({[weaponName]=weaponDef})
