local unitName = "haek"

local unitDef = {
	name = "Haek",
	Description = "Complex, mobile unit.",
	objectName = "haek.dae",
	script = "haek.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 1380,
	buildCostEnergy = 0,
	buildTime = 12,

	--Health

	maxDamage = 3200,
	idleAutoHeal = 10,
	idleTime     = 3,

	--Movement

	mass=1000,
	Acceleration = 2,
	BrakeRate = 1.5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 4,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2600,

	sightDistance = 400,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponhaek",
			maxAngleDif = 90,
			mainDir = [[0 0 1]],
			onlyTargetCategory = [[LAND]],
		},
		[2]={name  = "shieldhaek",
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
