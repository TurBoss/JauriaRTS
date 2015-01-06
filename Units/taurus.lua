local unitName = "gtaurus"

local unitDef = {

	name = "Taurus",
	Description = "Heavy tank",
	objectName = "taurus.dae",
	script = "taurus.lua",
	buildPic = "placeholder.png",
	iconType = "tkt4",

	--cost

	buildCostMetal = 1080,
	buildCostEnergy = 0,
	buildTime = 54,

	--Health

	maxDamage = 14500,
	idleAutoHeal = 25,
	idleTime     = 3,

	--Movement

	mass=3500,
	Acceleration = 0.5,
	BrakeRate = 0.5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 15,
	MaxVelocity = 3.5,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 950,
	
	TurnInPlace = false,
	turnInPlaceSpeedLimit  = 3.1,
	

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
		[1]={name  = "weapontaurus",
			onlyTargetCategory = [[LAND]],
		},
	},

	Category = [[LAND]],


}

return lowerkeys({[unitName] = unitDef})
