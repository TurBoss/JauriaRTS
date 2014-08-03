local unitName = "nm1"

local unitDef = {
	name = "NM-1",
	Description = "Simple, mobile unit",
	objectName = "nm1.dae",
	script = "nm1.lua",
	buildPic = "nm1.png",
	iconType = "nm1",

	--cost

	buildCostMetal = 80,
	buildCostEnergy = 0,
	buildTime = 5.5,

	--Health

	maxDamage = 900,
	idleAutoHeal = 5,

	--Movement

	mass=500,
	Acceleration = 1.2,
	BrakeRate = 5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 4.5,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 2600,

	sightDistance = 250,

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
