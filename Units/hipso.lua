local unitName = "hipso"

local unitDef = {
	name = "Hipso",
	Description = "Complex, mobile unit.",
	objectName = "hipso.dae",
	script = "hipso.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 430,
	buildCostEnergy = 0,
	buildTime = 18,

	--Health

	maxDamage = 1400,
	idleAutoHeal = 10,

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
		[1]={name  = "weaponhipso",
			onlyTargetCategory = [[LAND]],
		},
		[2]={name  = "shieldhipso",
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
