local unitName = "nk2"

local unitDef = {

	name = "NK-2",
	Description = "Light Tank",
	objectName = "nk2.dae",
	script = "nk2.lua",
	buildPic = "nk2.png",

	--cost

	buildCostMetal = 260,
	buildCostEnergy = 0,
	buildTime = 16,

	--Health

	maxDamage = 1000,
	idleAutoHeal = 5,

	--Movement

	Acceleration = 1,
	BrakeRate = 0.5,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 3,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 1000,

	sightDistance = 600,

	Category = [[LAND]],

	Builder = false,
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
