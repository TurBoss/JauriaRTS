local unitName = "heiker"

local unitDef = {
	name = "Heiker",
	Description = "Simple, recolector",
	objectName = "heiker.dae",
	script = "heiker.lua",
	buildPic = "placeholder.png",

	--cost

	buildCostMetal = 320,
	buildCostEnergy = 0,
	buildTime = 10,

	--Health

	maxDamage    = 3200,
	idleAutoHeal = 20,
	idleTime     = 3,
	--Movement

	mass=1800,
	Acceleration =2,
	BrakeRate = 1.5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxVelocity = 3.6,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 2400,

	sightDistance = 460,

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
	buildDistance = 160,
}

return lowerkeys({ [unitName] = unitDef })
