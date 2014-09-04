local unitName = "militia"

local unitDef = {
	name = "Militia",
	Description = "Light Infantry",
	objectName = "militia.dae",
	script = "milita.lua",
	buildPic = "placeholder.png",
	iconType = "milita",

	--cost

	buildCostMetal = 115,
	buildCostEnergy = 0,
	buildTime = 6.8,

	--Health

	maxDamage = 1130,
	idleAutoHeal = 21,
	idleTime     = 3,

	--Movement

	mass=800,
	Acceleration = 1.5,
	BrakeRate = 2.5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 4,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2700,

	sightDistance = 360,

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
