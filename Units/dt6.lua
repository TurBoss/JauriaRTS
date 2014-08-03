local unitName = "dt6"

local unitDef = {
	name = "DT-6",
	Description = "Simple, mobile unit",
	objectName = "dt6.dae",
	script = "dt6.lua",
	buildPic = "placeholder.png",

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
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 12,
	MaxVelocity = 4.5,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 2600,

	sightDistance = 550,

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
	},
}

return lowerkeys({ [unitName] = unitDef })
