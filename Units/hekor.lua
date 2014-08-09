local unitName = "hekor"

local unitDef = {
	name = "Hekor",
	Description = "Complex, mobile unit.",
	objectName = "hekor.dae",
	script = "hekor.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 630,
	buildCostEnergy = 0,
	buildTime = 24,

	--Health

	maxDamage = 2800,
	idleAutoHeal = 10,

	--Movement

	mass=800,
	Acceleration = 1.5,
	BrakeRate = 0.5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 4,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 2500,

	sightDistance = 420,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponheik",
			onlyTargetCategory = [[LAND]],
		},
		[2]={name  = "weaponheik",
			onlyTargetCategory = [[LAND]],
		},
		[3]={name  = "weaponheik",
			onlyTargetCategory = [[LAND]],
		},
		[4]={name  = "shieldhekor",
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
