local unitName = "prospector"

local unitDef = {
	name = "Prospector",
	Description = "Simple, recolector",
	objectName = "prospector.dae",
	script = "prospector.lua",
	buildPic = "placeholder.png",

	--cost

	buildCostMetal = 200,
	buildCostEnergy = 0,
	buildTime = 10.5,

	--Health

	maxDamage    = 3180,
	idleAutoHeal = 20,
	idleTime     = 3,
	--Movement

	mass=1800,
	Acceleration =1.2,
	BrakeRate = 1.2,
	FootprintX = 3,
	FootprintZ = 3,
	MaxVelocity = 3.8,
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
	repairSpeed = 0,
	reclaimSpeed = 30,
	buildDistance = 100,
}

return lowerkeys({ [unitName] = unitDef })
