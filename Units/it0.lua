local unitName = "it0"

local unitDef = {
	name = "IT-0",
	Description = "Simple, mobile unit",
	objectName = "it0.dae",
	script = "it0.lua",
	buildPic = "placeholder.png",

	--cost

	buildCostMetal = 300,
	buildCostEnergy = 0,
	buildTime = 20,

	--Health

	maxDamage = 200,
	idleAutoHeal = 5,

	--Movement

	Acceleration = 0.1,
	BrakeRate = 0.1,
	FootprintX = 2,
	FootprintZ = 2,
	--MaxSlope = 12,

	MaxVelocity = 1.5
	,
	MaxWaterDepth = 20,
	MovementClass = "Spider2x2",
	TurnRate = 3200,

	sightDistance = 800,

	Category = [[LAND]],

	CanAttack = false,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


}

return lowerkeys({ [unitName] = unitDef })
