local unitName = "drone"

local unitDef = {
	name = "drone",
	Description = "Simple, mobile unit",
	objectName = "drone.dae",
	script = "drone.lua",
	buildPic = "placeholder.png",

	--cost

	buildCostMetal = 100,
	buildCostEnergy = 0,
	buildTime = 5,

	--Health

	maxDamage = 6500,
	idleAutoHeal = 0,

	--Movement

	mass=650,
	Acceleration = 1,
	BrakeRate = 3,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 4.8,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 3200,

	sightDistance = 360,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 

}

return lowerkeys({ [unitName] = unitDef })
