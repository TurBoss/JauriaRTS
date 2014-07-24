local weaponName="weapontkt3"

local weaponDef={
	name="weapontkt3",
	weaponType=[[MissileLauncher]],

	Accuracy=8000,

	--Physic/flight path
	range=500,
	reloadtime=4.2,
	weaponVelocity=1100,
	startVelocity=600,
	weaponAcceleration=500,
	flightTime=6,
	BurnBlow=0,
	FixedLauncher=false,
	trajectoryHeight=0.7,
	dance=0,
	wobble=0,
	tolerance=16000,
	tracks=false,
	Turnrate=16000,
	collideFriendly=true,

	----APPEARANCE
	
	model="cobete.dae",
	smokeTrail=true,
	--explosionGenerator="custom:redsmoke",
	--CegTag="smoketrail",

	----TARGETING
	
	turret=true,
	CylinderTargetting=true,
	avoidFeature=false,
	avoidFriendly=false,
	
	soundStart              = "disparo_gfx",

	--commandfire=true,

	----DAMAGE
	
	damage={
		default=600,
		heavyarmor=0,
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
