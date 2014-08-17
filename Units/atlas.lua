local unitName = "atlas"

local unitDef = {
	name = "Atlas",
	Description = "Simple, mobile unit",
	objectName = "atlas.dae",
	script = "atlas.lua",
	buildPic = "placeholder.png",
	iconType = "dt6",

	--cost

	buildCostMetal = 80,
	buildCostEnergy = 0,
	buildTime = 5.8,

	--Health

	maxDamage = 960,
	idleAutoHeal = 18,

	--Movement

	mass=800,
	Acceleration = 1.2,
	BrakeRate = 5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 12,
	MaxVelocity = 2.5,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 2600,

	sightDistance = 350,

	Category = [[LAND]],
	
	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weapondt6",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[-1 0 1]],
		},
		[2]={name  = "weapondt62",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
