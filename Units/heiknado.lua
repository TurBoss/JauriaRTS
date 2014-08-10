local unitName = "heiknado"

local unitDef = {
	name = "heiknado",
	Description = "Complex, mobile unit.",
	objectName = "heiknado.dae",
	script = "heiknado.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 830,
	buildCostEnergy = 0,
	buildTime = 18,

	--Health

	maxDamage = 1800,
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
		[1]={name  = "shieldheiknado",
		},
		[2]={name  = "weaponheiknado",
			onlyTargetCategory = [[LAND]],
		},
		[3]={name  = "weaponheiknado",
			onlyTargetCategory = [[LAND]],
		},
		[4]={name  = "weaponheiknado",
			onlyTargetCategory = [[LAND]],
		},
		[5]={name  = "weaponheiknado",
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
