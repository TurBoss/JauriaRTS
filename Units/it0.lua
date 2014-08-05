local unitName = "it0"

local unitDef = {
	name = "IT-0",
	Description = "Simple, mobile unit",
	objectName = "it0.dae",
	script = "it0.lua",
	buildPic = "it0.png",
	iconType = "it0",

	--cost

	buildCostMetal = 100,
	buildCostEnergy = 0,
	buildTime = 10,

	--Health

	maxDamage = 800,
	idleAutoHeal = 5,

	--Movement

	Acceleration = 0.5,
	BrakeRate = 0.5,
	FootprintX = 1,
	FootprintZ = 1,
	--MaxSlope = 12,

	MaxVelocity = 2.5
	,
	MaxWaterDepth = 20,
	MovementClass = "Spider1x1",
	TurnRate = 3200,

	sightDistance = 600,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 

	weapons = {
		[1]={name  = "weaponit0",
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
