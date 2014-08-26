local unitName = "ftkt4"

local unitDef = {

	name = "TKT-4",
	Description = "heavy Tank",
	objectName = "tkt4.dae",
	script = "tkt4.lua",
	buildPic = "tkt4.png",
	iconType = "tkt4",

	--cost

	buildCostMetal = 1120,
	buildCostEnergy = 0,
	buildTime = 42,

	--Health

	maxDamage = 6300,
	idleAutoHeal = 32,
	idleTime     = 3,

	--Movement

	mass=3500,
	Acceleration = 0.5,
	BrakeRate = 0.5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 15,
	MaxVelocity = 3.2,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 800,

	sightDistance = 520,

	Builder = false,
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
		[1]={name  = "weapontkt4",
			onlyTargetCategory = [[LAND]],
		},
	},

	Category = [[LAND]],


}

return lowerkeys({[unitName] = unitDef})
