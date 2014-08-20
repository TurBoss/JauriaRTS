local unitName = "bit0"

local unitDef = {
	name = "IT-0",
	Description = "Simple, mobile unit",
	objectName = "it0.dae",
	script = "it0.lua",
	buildPic = "it0.png",
	iconType = "it0",

	--cost

	buildCostMetal = 280,
	buildCostEnergy = 0,
	buildTime = 6.8,

	--Health

	maxDamage = 400,
	idleAutoHeal = 25,
	idleTime     = 3,

	--Movement

	mass=380,
	Acceleration = 0.5,
	BrakeRate = 0.5,
	FootprintX = 1,
	FootprintZ = 1,
	--MaxSlope = 12,
	MaxVelocity = 3.2,
	MaxWaterDepth = 20,
	MovementClass = "Spider1x1",
	TurnRate = 3200,

	sightDistance = 600,

	Category = [[LAND]],

	CanAttack = false,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 
	CanCloak = true,
	MinCloakDistance = 150,
	InitCloaked = true,
}

return lowerkeys({ [unitName] = unitDef })
