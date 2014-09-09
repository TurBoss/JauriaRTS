local unitName = "enk3"

local unitDef = {
	name = "NK-3",
	Description = "Light Tank",
	objectName = "nk3.dae",
	script = "nk3.lua",
	buildPic = "nk3.png",
	iconType = "nk3",

	--cost

	buildCostMetal = 380,
	buildCostEnergy = 0,
	buildTime = 26.6,

	--Health

	maxDamage = 2250,
	idleAutoHeal = 23,
	idleTime     = 3,

	--Movement

	mass=1500,
	Acceleration = 1,
	BrakeRate = 1,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 3.5,
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
		[1]={name  = "weaponnk3",
			onlyTargetCategory = [[LAND]],
		},
		[2]={name  = "weaponnk3",
			slaveTo = 1,
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
