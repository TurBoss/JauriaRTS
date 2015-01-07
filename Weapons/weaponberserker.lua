local weaponName="weaponberserker"

local weaponDef={
	name="Bateria de misiles",
	weaponType=[[MissileLauncher]],
	
	Accuracy=80,
	
	--Physic/flight path
	
	range=310,
	reloadtime=3.2,
	weaponVelocity=600,
	startVelocity=400,
	weaponAcceleration=120,
	flightTime=6,
	BurnBlow=0,
	FixedLauncher=false,
	trajectoryHeight=0.5,
	dance=0,
	wobble=0,
	tolerance=16000,
	tracks=false,
	Turnrate=16000,
	collideFriendly=true,
	
	----APPEARANCE
	
	smokeTrail=true,
	model="misil.dae",
	--explosionGenerator="custom:redsmoke",
	--CegTag="smoketrail",
	
	----TARGETING
	
	turret=true,
	cylinderTargeting=true,
	avoidFeature=false,
	avoidFriendly=false,
	
	--commandfire=true,
	
	----DAMAGE
	
	damage={
		default=175,
		heavyarmor=260,
		lightarmor = 390,
		torrearmor = 195,
	},
	areaOfEffect=30,
	craterMult=0,
	
	--?FIXME***
	
	lineOfSight=true,
	
	--sound
	
	--soundHit=[[kanoba/SabotHitRemake.ogg]],
	--soundStart=[[kanoba/RockLit1Remake.ogg]],
}

return lowerkeys ({[weaponName]=weaponDef})
