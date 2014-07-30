local weaponName="weaponlz4"

local weaponDef={
	name="weaponlz4",
	weaponType=[[MissileLauncher]],

	Accuracy=100,
	movingAccuracy=10000,
	
	--Physic/flight path
	range=1500,
	reloadtime=4.2,
	weaponVelocity=600,
	startVelocity=50,
	weaponAcceleration=200,
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
		default=600,
		heavyarmor = 550,
		lightarmor = 600,
	},
	areaOfEffect=150,
	craterMult=0,
	--?FIXME***
	
	lineOfSight=true,


	--sound
	
	--soundHit=[[kanoba/SabotHitRemake.ogg]],
	--soundStart=[[kanoba/RockLit1Remake.ogg]],
}

return lowerkeys ({[weaponName]=weaponDef})
