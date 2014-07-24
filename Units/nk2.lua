local unitName = "nk2"

local unitDef = {
	name = "NK-2",
	Description = "Complex, mobile unit.",
	objectName = "nk2.dae",
	script = "nk2.lua",
	buildPic = "nk2.png",

	--cost

	buildCostMetal = 600,
	buildCostEnergy = 0,
	buildTime = 8,

	--Health

	maxDamage = 1400,
	idleAutoHeal = 5,

	--Movement

	Acceleration = 1,
	BrakeRate = 1,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 4,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 1300,

	sightDistance = 600,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponnk2",
			onlyTargetCategory = [[LAND]],
		},
		[2]={name  = "weaponnk2",
			slaveTo = 1,
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
