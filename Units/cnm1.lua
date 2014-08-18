local unitName = "cnm1"

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
	buildTime = 5.8,

	--Health

	maxDamage = 1020,
	idleAutoHeal = 20,
	idleTime     = 3,

	--Movement

	mass=800,
	Acceleration = 1.2,
	BrakeRate = 5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 4.5,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2600,

	sightDistance = 350,

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
			maxAngleDif = 210,
			mainDir = [[-1 0 1]],
		},
		[2]={name  = "weaponnm1",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
