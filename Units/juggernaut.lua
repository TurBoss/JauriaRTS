local unitName = "gjuggernaut"

local unitDef = {
	name = "Juggernaut",
	Description = "All-terrain heavy fighter",
	objectName = "juggernaut.dae",
	script = "juggernaut.lua",
	buildPic = "gjuggernaut.png",
	iconType = "nk3",

	--cost

	buildCostMetal = 1430,
	buildCostEnergy = 0,
	buildTime = 71.5,

	--Health

	maxDamage = 18280,
	idleAutoHeal = 34,
	idleTime     = 3,

	--Movement

	mass=1500,
	Acceleration = 8,
	BrakeRate = 3,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 12,
	MaxVelocity = 4.3,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 1300,

	sightDistance = 500,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponjuggernaut1",
			onlyTargetCategory = [[LAND]],
		},
		[2]={name  = "weaponjuggernaut2",
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
