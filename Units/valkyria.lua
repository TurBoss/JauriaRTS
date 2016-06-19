local unitName = "evalkyria"

local unitDef = {
	name = "Valkyria",
	Description = "Scout vehicle",
	objectName = "valkyria.dae",
	script = "valkyria.lua",
	buildPic = "evalkyria.png",
	iconType = "nm1",

	--cost

	buildCostMetal = 530,
	buildCostEnergy = 0,
	buildTime = 31,

	--Health

	maxDamage = 3800,
	idleAutoHeal = 120,
	idleTime     = 5,

	--Movement

	mass=800,
	Acceleration = 1.4,
	BrakeRate = 5,
	FootprintX = 1,
	FootprintZ = 1,
	MaxSlope = 12,
	MaxVelocity = 3.8,
	MaxWaterDepth = 20,
	MovementClass = "Default1x1",
	TurnRate = 2600,

	sightDistance = 500,

	Category = [[LAND]],
	
	CanCloak = true,
	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,
	CanCloak = true,
	MinCloakDistance = 250,
	InitCloaked = true, 

	sfxtypes = {
		explosiongenerators = {
			"custom:smoke1",
		},
	},

	weapons = {
		[1]={name  = "weaponvalkyria",
			--maxAngleDif = 210,
			--mainDir = [[-1 1 1]],
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
