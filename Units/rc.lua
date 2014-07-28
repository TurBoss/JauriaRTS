local unitName = "rc"

local unitDef = {
	name = "RC",
	Description = "Simple, recolector",
	objectName = "rc.dae",
	script = "rc.lua",
	buildPic = "rc.png",

	--cost

	buildCostMetal = 500,
	buildCostEnergy = 0,
	buildTime = 20,

	--Health

	maxDamage = 200,
	idleAutoHeal = 5,

	--Movement

	mass=1800,
	Acceleration =0.8,
	BrakeRate = 0.5,
	FootprintX = 3,
	FootprintZ = 3,

	MaxVelocity = 1.5,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 1000,

	sightDistance = 400,

	Category = [[LAND]],

	CanAttack = false,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 

	--building

	Builder = true,
	ShowNanoSpray = true,
	CanBeAssisted = true,  
	workerTime = 0.1,
	repairSpeed = 0.2,
	reclaimSpeed = 50,
	buildDistance = 100,
}

return lowerkeys({ [unitName] = unitDef })
