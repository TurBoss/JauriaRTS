local unitName = "nurglete"

local unitDef = {
	name = "Nurglete bomba",
	Description = "Nurgle living bomb",
	objectName = "nurglete.dae",
	--script = "raider.lua",
	buildPic = "raider.png",
	iconType = "nm1",

	--cost

	buildCostMetal = 150,
	buildCostEnergy = 0,
	buildTime = 12.5,

	--Health

	maxDamage = 1520,
	idleAutoHeal = 9,
	idleTime     = 3,

	--Movement

	mass= 1300,
	Acceleration = 2,
	BrakeRate = 3.2,
	FootprintX = 2.5,
	FootprintZ = 2.5,
	MaxSlope = 8,
	MaxVelocity = 4.1,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2400,

	sightDistance = 365,

	Category = [[LAND]],
	
	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 

	sfxtypes = {
		explosiongenerators = {
			"custom:smoke1",
		},
	},

	weapons = {
		[1]={name  = "weaponraider",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 210,
			--mainDir = [[-1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })