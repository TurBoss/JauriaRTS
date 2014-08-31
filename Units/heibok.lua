local unitName = "gheibok"

local unitDef = {
	name = "Heibok",
	Description = "Complex, mobile unit.",
	objectName = "heibok.dae",
	script = "heibok.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 1250,
	buildCostEnergy = 0,
	buildTime = 45,

	--Health

	maxDamage = 2900,
	idleAutoHeal = 10,
	idleTime     = 3,

	--Movement

	mass=8000,
	Acceleration = 1.8,
	BrakeRate = 1.5,
	FootprintX = 6,
	FootprintZ = 6,
	MaxSlope = 12,
	MaxVelocity = 2.2,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 750,

	sightDistance = 540,

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
			--maxAngleDif = 210,
			--mainDir = [[0 0 1]],
		},
		--[2]={name  = "shieldheibok",
		--},
	},
}

return lowerkeys({ [unitName] = unitDef })
