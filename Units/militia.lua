local unitName = "bmilitia"

local unitDef = {
	name = "Militia",
	Description = "Light Infantry",
	objectName = "militia.dae",
	script = "militia.lua",
	buildPic = "placeholder.png",
	iconType = "militia",

	--cost

	buildCostMetal = 115,
	buildCostEnergy = 0,
	buildTime = 5.75,

	--Health

	maxDamage = 2520,
	idleAutoHeal = 21,
	idleTime     = 3,

	--Movement

	mass=800,
	Acceleration = 1.5,
	BrakeRate = 2.5,
	FootprintX = 1,
	FootprintZ = 1,
	MaxSlope = 12,
	MaxVelocity = 4,
	MaxWaterDepth = 20,
	MovementClass = "Default1x1",
	TurnRate = 2800,

	sightDistance = 400,

	Category = [[LAND]],
	
	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 

	sfxtypes = {
		explosiongenerators = {
			"custom:smoke1",
		},
	},

	weapons = {
		[1]={name  = "weaponmilitia",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[-1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
