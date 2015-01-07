local unitName = "cberserker"

local unitDef = {
	name = "Berserker",
	Description = "Heavy Infantry",
	objectName = "berserker.dae",
	script = "berserker.lua",
	buildPic = "placeholder.png",
	iconType = "berserker",

	--cost

	buildCostMetal = 135,
	buildCostEnergy = 0,
	buildTime = 6.75,

	--Health

	maxDamage = 2610,
	idleAutoHeal = 23,
	idleTime     = 3,

	--Movement

	mass=880,
	Acceleration = 1.2,
	BrakeRate = 2.2,
	FootprintX = 1,
	FootprintZ = 1,
	MaxSlope = 12,
	MaxVelocity = 3.8,
	MaxWaterDepth = 20,
	MovementClass = "Default1x1",
	TurnRate = 2620,

	sightDistance = 420,

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
		[1]={name  = "weaponberserker",
			onlyTargetCategory = [[LAND AIR]],
			maxAngleDif = 210,
			mainDir = [[0 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
