local weaponName="weaponlz5"

local weaponDef={
	name="weaponlz5",
	weaponType=[[MissileLauncher]],

	Accuracy=50,
	movingAccuracy=50,
	
	--Physic/flight path
	range=1200,
	reloadtime=30,
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
	--CegTag="smoketrail",

	----TARGETING
	
	turret=true,
	CylinderTargeting=true,
	avoidFeature=false,
	avoidFriendly=false,
	
	soundStart              = "disparo_gfx",

	--commandfire=true,

	----DAMAGE
	
	damage={
		default = 1500,
		heavyarmor = 2000,
		lightarmor = 1000,
	},
	areaOfEffect=330,
	craterMult=0,
	--?FIXME***
	
	lineOfSight=true,


	--sound
	
	--soundHit=[[kanoba/SabotHitRemake.ogg]],
	--soundStart=[[kanoba/RockLit1Remake.ogg]],
}

return lowerkeys ({[weaponName]=weaponDef})
