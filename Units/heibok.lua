local unitName = "heibok"

local unitDef = {
	name = "Heibok",
	Description = "Complex, mobile unit.",
	objectName = "heibok.dae",
	script = "heibok.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 280,
	buildCostEnergy = 0,
	buildTime = 12,

	--Health

	maxDamage = 1280,
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

	sfxtypes = {
		explosiongenerators = {
			"custom:smoke2",
		},
	},
	
	weapons = {
		[1]={name  = "weaponheibok",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[0 0 1]],
		},
		[2]={name  = "shieldheibok",
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
