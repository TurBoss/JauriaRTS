local unitName = "fdesolator"

local unitDef = {
	name = "Desolator",
	Description = "Armored vehicle antiswarm",
	objectName = "desolator.dae",
	script = "desolator.lua",
	buildPic = "desolator.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 740,
	buildCostEnergy = 0,
	buildTime = 37,

	--Health

	maxDamage = 7840,
	idleAutoHeal = 26,
	idleTime     = 4,

	--Movement

	mass = 880,
	Acceleration = 4,
	BrakeRate = 3,
	FootprintX = 3,
	FootprintZ = 3,
	MaxSlope = 12,
	MaxVelocity = 3.4,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 2300,

	sightDistance = 420,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 

	sfxtypes = {
		explosiongenerators = {
			"custom:smoke2",
		},
	},


	weapons = {
		[1]={name  = "weapondesolator",
			onlyTargetCategory = [[LAND AIR]],
		},
		[2]={name  = "weapondesolator",
			onlyTargetCategory = [[LAND AIR]],
		},
	
	},
}

return lowerkeys({ [unitName] = unitDef })
