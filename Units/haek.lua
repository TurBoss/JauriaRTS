local unitName = "fhaek"

local unitDef = {
	name = "Haek",
	Description = "Fighter vehicle that has decent specs.",
	objectName = "haek.dae",
	script = "haek.lua",
	buildPic = "fhaek.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 800,
	buildCostEnergy = 0,
	buildTime = 42,

	--Health

	maxDamage = 3200,
	idleAutoHeal = 28,
	idleTime     = 3,

	--Movement

	mass=1300,
	Acceleration = 2,
	BrakeRate = 1.5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 3.8,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 3300,

	sightDistance = 500,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponhaek",
			maxAngleDif = 230,
			mainDir = [[0 0 1]],
			onlyTargetCategory = [[LAND]],
		},
		[2]={name  = "shieldhaek",
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
