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
	buildTime = 26,

	--Health

	maxDamage = 4200,
	idleAutoHeal = 10,
	idleTime     = 3,

	--Movement

	mass=800,
	Acceleration = 1.5,
	BrakeRate = 0.5,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 3.6,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2800,

	sightDistance = 460,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponhekor",
			onlyTargetCategory = [[LAND]],
		},
		[2]={name  = "weaponhekor",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 260,
			mainDir = [[-1 0 1]],
		},
		[3]={name  = "weaponhekor",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 260,
			mainDir = [[1 0 1]],
		},
		--[4]={name  = "shieldhekor",
		--},
	},
}

return lowerkeys({ [unitName] = unitDef })
