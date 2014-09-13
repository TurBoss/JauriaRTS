local unitName = "hatlas"

local unitDef = {
	name = "Atlas",
	Description = "Simple, mobile unit",
	objectName = "atlas.dae",
	script = "atlas.lua",
	buildPic = "placeholder.png",
	iconType = "dt6",

	--cost

	buildCostMetal = 2810,
	buildCostEnergy = 0,
	buildTime = 140.5,

	--Health

	maxDamage = 12900,
	idleAutoHeal = 36,
	idleTime     = 3,

	--Movement

	mass=800,
	Acceleration = 2,
	BrakeRate = 5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 12,
	MaxVelocity = 3.7,
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

	sfxtypes = {
		explosiongenerators = {
			"custom:smoke3",
		},
	},


	weapons = {
		[1]={name  = "Laser",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 210,
			--mainDir = [[-1 0 1]],
		},
		[2]={name  = "weapondt62",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 210,
			--mainDir = [[1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
