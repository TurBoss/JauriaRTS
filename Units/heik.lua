local unitName = "heik"

local unitDef = {
	name = "Heik",
	Description = "Complex, mobile unit.",
	objectName = "heik.dae",
	script = "heik.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 160,
	buildCostEnergy = 0,
	buildTime = 12,

	--Health

	maxDamage = 680,
	idleAutoHeal = 100,

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

	sightDistance = 400,

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
		[2]={name  = "shieldheik",
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
