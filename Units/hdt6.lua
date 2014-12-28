local unitName = "hdt6"

local unitDef = {
	name = "DT-6",
	Description = "Heavy Armored Mech",
	objectName = "dt6.dae",
	script = "dt6.lua",
	buildPic = "dt6.png",
	iconType = "dt6",

	--cost

	buildCostMetal = 2750,
	buildCostEnergy = 0,
	buildTime = 137.5,

	--Health

	maxDamage = 27000,
	idleAutoHeal = 38,
	idleTime     = 3,

	--Movement

	mass=4800,
	Acceleration = 3,
	BrakeRate = 5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 12,
	MaxVelocity = 3.8,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 1000,

	sightDistance = 580,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weapondt6",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
		[2]={name  = "weapondt6",
			onlyTargetCategory = [[LAND]],
			slaveTo = 1,
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
		[3]={name  = "weapondt62",
			onlyTargetCategory = [[LAND]],
			slaveTo = 1,
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
		[4]={name  = "weapondt62",
			onlyTargetCategory = [[LAND]],
			slaveTo = 1,
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
