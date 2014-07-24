local unitName = "tkt3"

local unitDef = {

	name = "TKT-3",
	Description = "Heavy tank",
	objectName = "tkt3.dae",
	script = "tkt3.lua",
	buildPic = "tkt3.png",

	--cost

	buildCostMetal = 2200,
	buildCostEnergy = 0,
	buildTime = 30,

	--Health

	maxDamage = 3200,
	idleAutoHeal = 15,

	--Movement

	Acceleration = 0.2,
	BrakeRate = 0.3,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 15,
	MaxVelocity = 3.0,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 350,

	sightDistance = 700,

	Category = [[LAND]],

	Builder = false,
	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 
	
	weapons = {
	[1]={name  = "weapontkt3",
		onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({[unitName] = unitDef})
