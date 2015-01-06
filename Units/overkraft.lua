local unitName = "doverkraft"

local unitDef = {
	name = "Overkraft",
	Description = "Simple, mobile unit",
	objectName = "overkraft.dae",
	script = "overkraft.lua",
	buildPic = "placeholder.png",

	--cost

	buildCostMetal = 410,
	buildCostEnergy = 0,
	buildTime = 20.5,

	--Health

	maxDamage = 5160,
	idleAutoHeal = 0,
	idleTime     = 3,

	--Movement

	mass=650,
	Acceleration = 1,
	BrakeRate = 3,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 4.3,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 2600,
	
	TurnInPlace = false,
	turnInPlaceSpeedLimit  = 3.9,

	sightDistance = 360,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "destruclaser",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
		[2]={name  = "destruclaser",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
		[3]={name  = "destruclaser",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
		[4]={name  = "destruclaser",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
