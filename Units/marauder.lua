local unitName = "cmarauder"

local unitDef = {
	name = "Marauder",
	Description = "High movility fighter",
	objectName = "marauder.dae",
	script = "marauder.lua",
	buildPic = "marauder.png",
	iconType = "nm1",

	--cost

	buildCostMetal = 180,
	buildCostEnergy = 0,
	buildTime = 9,

	--Health

	maxDamage = 1680,
	idleAutoHeal = 14,
	idleTime     = 3,

	--Movement

	mass=800,
	Acceleration = 5,
	BrakeRate = 5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 3.9,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2800,

	sightDistance = 360,

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
		[2]={name  = "weaponmarauder",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 210,
			--mainDir = [[-1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
