local unitName = "escorpion"

local unitDef = {
	name = "escorpion",
	Description = "Jungle",
	objectName = "escorpion.dae",
	script = "escorpion.lua",
	buildPic = "placeholder.png",
	iconType = "mobs",

	--cost

	buildCostMetal = 100,
	buildCostEnergy = 0,
	buildTime = 5,

	--Health

	maxDamage = 10500,
	idleAutoHeal = 26,
	idleTime     = 3,

	--Movement

	mass=4000,
	Acceleration = 0.5,
	BrakeRate = 3,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 12,
	MaxVelocity = 2.5,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 1600,

	sightDistance = 430,

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
