local unitName = "chosen"

local unitDef = {
	name = "Chosen",
	Description = "Light Tank",
	objectName = "chosen.dae",
	--script = "nk3.lua",
	buildPic = "nk3.png",
	iconType = "nk3",

	--cost

	buildCostMetal = 750,
	buildCostEnergy = 0,
	buildTime = 22,

	--Health

	maxDamage = 3200,
	idleAutoHeal = 35,
	idleTime     = 2.3,

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
