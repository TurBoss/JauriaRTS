local unitName = "hheibok"

local unitDef = {
	name = "Heibok",
	Description = "Complex, mobile unit.",
	objectName = "heibok.dae",
	script = "heibok.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 2620,
	buildCostEnergy = 0,
	buildTime = 131,

	--Health

	maxDamage = 11500,
	idleAutoHeal = 35,
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
	TurnRate = 800,

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
