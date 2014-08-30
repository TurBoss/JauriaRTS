local unitName = "marauder"

local unitDef = {
	name = "Marauder",
	Description = "Light Infantry",
	objectName = "marauder.dae",
	script = "marauder.lua",
	buildPic = "nm1.png",
	iconType = "nm1",

	--cost

	buildCostMetal = 215,
	buildCostEnergy = 0,
	buildTime = 9.6,

	--Health

	maxDamage = 1630,
	idleAutoHeal = 32,
	idleTime     = 3,

	--Movement

	mass=800,
	Acceleration = 3,
	BrakeRate = 5,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 4,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 3400,

	sightDistance = 430,

	Category = [[LAND]],
	
	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 

	sfxtypes = {
		explosiongenerators = {
			"custom:smoke1",
		},
	},

	weapons = {
		[1]={name  = "weaponmarauder",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 210,
			--mainDir = [[-1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
