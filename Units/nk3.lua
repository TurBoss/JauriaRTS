local unitName = "nk3"

local unitDef = {
	name = "NK-3",
	Description = "Complex, mobile unit.",
	objectName = "nk3.dae",
	script = "nk3.lua",
	buildPic = "nk3.png",

	--cost

	buildCostMetal = 230,
	buildCostEnergy = 0,
	buildTime = 22,

	--Health

	maxDamage = 1400,
	idleAutoHeal = 5,

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

	sightDistance = 400,

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
