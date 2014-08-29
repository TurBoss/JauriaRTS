local unitName = "juggernaut"

local unitDef = {
	name = "Juggernaut",
	Description = "Heavy Infantry",
	objectName = "juggernaut.dae",
	script = "juggernaut.lua",
	buildPic = "rk2.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 260,
	buildCostEnergy = 0,
	buildTime = 9,

	--Health

	maxDamage = 2500,
	idleAutoHeal = 10,
	idleTime     = 4,

	--Movement

	mass = 880,
	Acceleration = 1,
	BrakeRate = 2,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 4.2,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2300,

	sightDistance = 380,

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
		[1]={name  = "weaponjuggernaut",
			onlyTargetCategory = [[LAND AIR]],
		},
		[2]={name  = "weaponjuggernaut",
			onlyTargetCategory = [[LAND AIR]],
		},
	
	},
}

return lowerkeys({ [unitName] = unitDef })
