local unitName = "escorpion"

local unitDef = {
	name = "escorpion",
	Description = "Jungle",
	objectName = "escorpion.dae",
	script = "escorpion.lua",
	buildPic = "placeholder.png",

	--cost

	buildCostMetal = 100,
	buildCostEnergy = 0,
	buildTime = 5,

	--Health

	maxDamage = 8200,
	idleAutoHeal = 26,
	idleTime     = 3,

	--Movement

	mass=4000,
	Acceleration = 0.5,
	BrakeRate = 3,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 1,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 1000,

	sightDistance = 360,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponescorpion",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 90,
			--mainDir = [[-1 0 1]],
		},
		[2]={name  = "weaponescorpion",
			onlyTargetCategory = [[LAND]],
			slaveto = 1,
			--maxAngleDif = 90,
			--mainDir = [[-1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
