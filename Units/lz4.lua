local unitName = "lz4"

local unitDef = {
	name = "LZ-4",
	Description = "Misile Launcher.",
	objectName = "lz4.dae",
	script = "lz4.lua",
	buildPic = "lz4.png",

	--cost

	buildCostMetal = 2000,
	buildCostEnergy = 0,
	buildTime = 50,

	--Health

	maxDamage = 3000,
	idleAutoHeal = 5,

	--Movement

	mass=1500,
	Acceleration = 0.2,
	BrakeRate = 0.2,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 1.5,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 500,

	sightDistance = 400,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponlz4",
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
