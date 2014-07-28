local weaponName="weaponnk2misil"

local weaponDef={
	name="weaponnk2nisil",
	weaponType=[[MissileLauncher]],

	--Accuracy=1000,

	--Physic/flight path
	range=500,
	reloadtime=0.8,
	weaponVelocity=500,
	startVelocity=300,
	weaponAcceleration=200,
	flightTime=3,
	BurnBlow=0,
	FixedLauncher=false,
	trajectoryHeight=0.8,
	dance=0,
	wobble=0,
	tolerance=16000,
	tracks=false,
	Turnrate=16000,
	collideFriendly=true,

	----APPEARANCE
	
	rgbColor                = [[1 0.2 0]],
	size                    = 8,
	stages                  = 8,
	intensity               = 0.5,
	separation              = 1.5,
	
	model="cobete.dae",
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
		default=90,
		heavyarmor=0,
	},
	areaOfEffect=0,
	craterMult=0,

	--?FIXME***
	
	lineOfSight=true,


	--sound
	
	--soundHit=[[kanoba/SabotHitRemake.ogg]],
	--soundStart=[[kanoba/RockLit1Remake.ogg]],
}

return lowerkeys ({[weaponName]=weaponDef})
