local unitName = "tkt3"

local unitDef = {

	name = "TKT-3",
	Description = "heavy tank",
	objectName = "tkt3.dae",
	script = "tkt3.lua",
	buildPic = "tkt3.png",

	--cost

	buildCostMetal = 2000,
	buildCostEnergy = 0,
	buildTime = 12,

	--Health

	maxDamage = 3500,
	idleAutoHeal = 15,

	--Movement

	Acceleration = 0.2,
	BrakeRate = 0.5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 15,
	MaxVelocity = 3.3,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 600,

	sightDistance = 700,

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

	Category = [[LAND]],


}

return lowerkeys({[unitName] = unitDef})
