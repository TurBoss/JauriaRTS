local unitName = "tkt4"

local unitDef = {

	name = "TKT-4",
	Description = "heavy tank",
	objectName = "tkt4.dae",
	script = "tkt4.lua",
	buildPic = "tkt4.png",

	--cost

	buildCostMetal = 1000,
	buildCostEnergy = 0,
	buildTime = 25,

	--Health

	maxDamage = 5000,
	idleAutoHeal = 15,

	--Movement

	mass=3500,
	Acceleration = 0.5,
	BrakeRate = 0.5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 15,
	MaxVelocity = 3,
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
		[1]={name  = "weapontkt4",
			onlyTargetCategory = [[LAND]],
		},
	},

	Category = [[LAND]],


}

return lowerkeys({[unitName] = unitDef})
