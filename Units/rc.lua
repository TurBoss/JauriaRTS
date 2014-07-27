local unitName = "rc"

local unitDef = {
	name = "RC",
	Description = "Simple, recolector",
	objectName = "rc.dae",
	script = "rc.lua",
	buildPic = "rc.png",

	--cost

	buildCostMetal = 300,
	buildCostEnergy = 0,
	buildTime = 20,

	--Health

	maxDamage = 150,
	idleAutoHeal = 5,

	--Movement

	Acceleration = 0.1,
	BrakeRate = 0.1,
	FootprintX = 3,
	FootprintZ = 3,

	MaxVelocity = 1.5,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 3200,

	sightDistance = 650,

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
	workerTime = 1,
	buildDistance = 400,
	terraformSpeed = 9001,
}

return lowerkeys({ [unitName] = unitDef })
