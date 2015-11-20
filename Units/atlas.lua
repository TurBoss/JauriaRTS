local unitName = "hatlas"

local unitDef = {
	name = "Atlas",
	Description = "Simple, mobile unit",
	objectName = "atlas.dae",
	script = "atlas.lua",
	buildPic = "atlas.png",
	iconType = "dt6",

	--cost

	buildCostMetal = 2810,
	buildCostEnergy = 0,
	buildTime = 140.5,

	--Health

	maxDamage = 25800,
	idleAutoHeal = 36,
	idleTime     = 3,

	--Movement

	mass=800,
	Acceleration = 2,
	BrakeRate = 5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 12,
	MaxVelocity = 4.1,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 2600,

	sightDistance = 350,

	Category = [[LAND]],
	
	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	sfxtypes = {
		explosiongenerators = {
			"custom:smoke3",
		},
	},


	weapons = {
		[1]={name  = "Laser",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[0 0 1]],
		},
		[2]={name  = "weaponatlaspistola",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[0 0 1]],
		},
		[3]={name  = "weaponatlaspistola",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[0 0 1]],
		},
		[4]={name  = "weaponatlaspecho",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[0 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
