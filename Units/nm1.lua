local unitName = "nm1"

local unitDef = {
	name = "NM-1",
	Description = "Simple, mobile unit",
	objectName = "nm1.dae",
	script = "nm1.lua",
	buildPic = "placeholder.png",

	--cost

	buildCostMetal = 260,
	buildCostEnergy = 0,
	buildTime = 2,

	--Health

	maxDamage = 700,
	idleAutoHeal = 5,

	--Movement

	Acceleration = 2,
	BrakeRate = 2,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 5.3,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 2500,

	sightDistance = 500,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponnm1",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
		[2]={name  = "weaponnm1",
			onlyTargetCategory = [[LAND]],
			slaveTo = 1,
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
