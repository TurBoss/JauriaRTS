local unitName = "dhipso"

local unitDef = {
	name = "hipso",
	Description = "Complex, mobile unit.",
	objectName = "hipso.dae",
	script = "hipso.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 460,
	buildCostEnergy = 0,
	buildTime = 23,

	--Health

	maxDamage = 1600,
	idleAutoHeal = 10,
	idleTime     = 3,

	--Movement

	mass=1300,
	Acceleration = 1.5,
	BrakeRate = 1.5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 3.6,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2200,

	sightDistance = 380,

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
