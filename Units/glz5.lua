local unitName = "glz5"

local unitDef = {
	name = "LZ-5",
	Description = "Misile Launcher.",
	objectName = "lz5.dae",
	script = "lz5.lua",
	buildPic = "lz5.png",
	iconType = "lz5",

	--cost

	buildCostMetal = 1380,
	buildCostEnergy = 0,
	buildTime = 96.6,

	--Health

	maxDamage = 3850,
	idleAutoHeal = 25,
	idleTime     = 3,

	--Movement

	mass=3200,
	Acceleration = 0.2,
	BrakeRate = 0.2,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 2.8,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 600,

	sightDistance = 400,

	Category = [[LAND AIR]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	explodeAs = "weaponlz5",
	weapons = {
		[1]={name  = "weaponlz5",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[-1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
