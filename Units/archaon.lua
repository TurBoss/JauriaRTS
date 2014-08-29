local unitName = "archaon"

local unitDef = {
	name = "Archaon",
	Description = "Heavy Armored Mech",
	objectName = "archaon.dae",
	--script = "dt6.lua",
	buildPic = "dt6.png",
	iconType = "dt6",

	--cost

	buildCostMetal = 3300,
	buildCostEnergy = 0,
	buildTime = 65,

	--Health

	maxDamage = 25000,
	idleAutoHeal = 5,
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
