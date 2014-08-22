local unitName = "heiknado"

local unitDef = {
	name = "heiknado",
	Description = "Complex, mobile unit.",
	objectName = "heiknado.dae",
	script = "heiknado.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 1380,
	buildCostEnergy = 0,
	buildTime = 32,

	--Health

	maxDamage = 3200,
	idleAutoHeal = 10,
	idleTime     = 3,

	--Movement

	mass=3800,
	Acceleration = 2,
	BrakeRate = 1.5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 3.8,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 2800,

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
		[2]={name  = "weaponheiknado2",
			onlyTargetCategory = [[LAND]],
		},
		[3]={name  = "weaponheiknado2",
			onlyTargetCategory = [[LAND]],
		},
		[4]={name  = "weaponheiknado2",
			onlyTargetCategory = [[LAND]],
		},
		[5]={name  = "weaponheiknado2",
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
