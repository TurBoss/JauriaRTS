local unitName = "arc"

local unitDef = {
	name = "RC",
	Description = "Simple, recolector",
	objectName = "rc.dae",
	script = "rc.lua",
	buildPic = "rc.png",

	--cost

	buildCostMetal = 300,
	buildCostEnergy = 0,
	buildTime = 10,

	--Health

	maxDamage = 1800,
	idleAutoHeal = 20,

	--Movement

	mass=1800,
	Acceleration =0.8,
	BrakeRate = 0.5,
	FootprintX = 3,
	FootprintZ = 3,
	MaxVelocity = 3,
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
	repairSpeed = 0.1,
	reclaimSpeed = 150,
	buildDistance = 160,
}

return lowerkeys({ [unitName] = unitDef })
