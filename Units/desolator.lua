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
	buildTime = 51.8,

	--Health

	maxDamage = 4200,
	idleAutoHeal = 26,
	idleTime     = 4,

	--Movement

	mass = 880,
	Acceleration = 4,
	BrakeRate = 3,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 12,
	MaxVelocity = 4.2,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 2300,

	sightDistance = 510,

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
