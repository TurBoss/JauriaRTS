local unitName = "lz5"

local unitDef = {
	name = "LZ-5",
	Description = "Misile Launcher.",
	objectName = "lz5.dae",
	script = "lz5.lua",
	buildPic = "lz5.png",
	iconType = "lz5",

	--cost

	buildCostMetal = 1600,
	buildCostEnergy = 0,
	buildTime = 45,

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

	Category = [[LAND AIR]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponlz5",
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
