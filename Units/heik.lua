local unitName = "heik"

local unitDef = {
	name = "Heik",
	Description = "Complex, mobile unit.",
	objectName = "heik.dae",
	script = "heik.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 240,
	buildCostEnergy = 0,
	buildTime = 12,

	--Health

	maxDamage = 680,
	idleAutoHeal = 100,

	--Movement

	mass=1000,
	Acceleration = 2,
	BrakeRate = 1.5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 3.8,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 2600,

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
