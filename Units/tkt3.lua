local unitName = "tkt3"

local unitDef = {

	name = "TKT-3",
	Description = "heavy tank",
	objectName = "tkt3.dae",
	script = "tkt3.lua",
	buildPic = "tkt3.png",

	--cost

	buildCostMetal = 1000,
	buildCostEnergy = 0,
	buildTime = 28,

	--Health

	maxDamage = 3600,
	idleAutoHeal = 15,

	--Movement

	mass=3500,
	Acceleration = 0.5,
	BrakeRate = 0.5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 15,
	MaxVelocity = 2.8,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 800,

	sightDistance = 550,

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
