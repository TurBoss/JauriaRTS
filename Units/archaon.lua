local unitName = "harchaon"

local unitDef = {
	name = "Archaon",
	Description = "Ultimate heavy tank",
	objectName = "archaon.dae",
	script = "archaon.lua",
	buildPic = "archaon.png",
	iconType = "dt6",

	--cost

	buildCostMetal = 2880,
	buildCostEnergy = 0,
	buildTime = 85,

	--Health

	maxDamage = 16800,
	idleAutoHeal = 32,
	idleTime     = 3,

	--Movement

	mass=4800,
	Acceleration = 3,
	BrakeRate = 5,
	FootprintX = 6,
	FootprintZ = 6,
	MaxSlope = 12,
	MaxVelocity = 3.8,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 1000,

	sightDistance = 580,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponarchaon",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 15,
			--mainDir = [[0 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
