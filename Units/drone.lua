local unitName = "drone"

local unitDef = {
	name = "Drone",
	Description = "Light Tank",
	objectName = "drone.dae",
	script = "drone.lua",
	buildPic = "placeholder.png",
	iconType = "drone",

	--cost

	buildCostMetal = 370,
	buildCostEnergy = 0,
	buildTime = 15.2,

	--Health

	maxDamage = 2180,
	idleAutoHeal = 20,
	idleTime     = 3,

	--Movement

	mass=1500,
	Acceleration = 1,
	BrakeRate = 1,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 4,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 1300,

	sightDistance = 420,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weapondrone",
			onlyTargetCategory = [[LAND]],
		},
		[2]={name  = "weapondrone",
			slaveTo = 1,
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
