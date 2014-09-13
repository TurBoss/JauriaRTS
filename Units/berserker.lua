local unitName = "berserker"

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

	maxDamage = 1510,
	idleAutoHeal = 23,
	idleTime     = 3,

	--Movement

	mass=880,
	Acceleration = 1.2,
	BrakeRate = 2.2,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 3.8,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2620,

	sightDistance = 380,

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
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
