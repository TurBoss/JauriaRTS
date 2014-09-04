local unitName = "scorpio"

local unitDef = {
	name = "Scorpio",
	Description = "Long range slow catapult",
	objectName = "scorpio.dae",
	script = "scorpio.lua",
	buildPic = "placeholder.png",
	iconType = "scorpio",

	--cost

	buildCostMetal = 520,
	buildCostEnergy = 0,
	buildTime = 23,

	--Health

	maxDamage = 3400,
	idleAutoHeal = 24,
	idleTime     = 3,

	--Movement

	mass=3200,
	Acceleration = 1,
	BrakeRate = 1,
	FootprintX = 3.5,
	FootprintZ = 3.5,
	MaxSlope = 12,
	MaxVelocity = 3.8,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 600,

	sightDistance = 590,

	Category = [[LAND AIR]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	explodeAs = "weaponlz5",
	weapons = {
		[1]={name  = "weaponscorpio",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[-1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
