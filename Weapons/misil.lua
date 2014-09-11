local weaponName="misil"

local weaponDef={
	name="Bateria de misiles",
	weaponType=[[MissileLauncher]],
	
	Accuracy=2000,
	
	--Physic/flight path
	
	range=800,
	reloadtime=0.3,
	weaponVelocity=1000,
	startVelocity=250,
	weaponAcceleration=300,
	flightTime=6,
	BurnBlow=0,
	FixedLauncher=false,
	--trajectoryHeight=0.8,
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
	CylinderTargetting=true,
	avoidFeature=false,
	avoidFriendly=false,
	
	--commandfire=true,
	
	----DAMAGE
	
	damage={
		default=150,
		heavyarmor=260,
		lightarmor = 130,
		torrearmor = 0,
	},
	areaOfEffect=100,
	craterMult=0,
	
	--?FIXME***
	
	lineOfSight=true,
	
	--sound
	
	--soundHit=[[kanoba/SabotHitRemake.ogg]],
	--soundStart=[[kanoba/RockLit1Remake.ogg]],
}

return lowerkeys ({[weaponName]=weaponDef})
