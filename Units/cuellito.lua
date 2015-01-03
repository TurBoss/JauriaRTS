local unitName = "cuellito"

local unitDef = {
	name = "cuellito",
	Description = "Simple, mobile unit",
	objectName = "cuellito.dae",
	script = "cuellito.lua",
	buildPic = "placeholder.png",
	iconType = "mobs",

	--cost

	buildCostMetal = 100,
	buildCostEnergy = 0,
	buildTime = 5,

	--Health

	maxDamage = 8600,
	idleAutoHeal = 26,
	idleTime     = 3,
	--Movement

	mass=4000,
	Acceleration = 0.5,
	BrakeRate = 3,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 0,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 1000,

	sightDistance = 380,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponcuellito",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
