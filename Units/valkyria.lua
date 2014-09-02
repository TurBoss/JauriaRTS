local unitName = "valkyria"

local unitDef = {
	name = "Valkyria",
	Description = "Simple, mobile unit",
	objectName = "valkyria.dae",
	script = "valkyria.lua",
	buildPic = "placeholder.png",
	iconType = "nm1",

	--cost

	buildCostMetal = 100,
	buildCostEnergy = 0,
	buildTime = 6,

	--Health

	maxDamage = 1080,
	idleAutoHeal = 18,
	idleTime     = 3,

	--Movement

	mass=800,
	Acceleration = 1.2,
	BrakeRate = 5,
	FootprintX = 2,
	FootprintZ = 2,
	MaxSlope = 12,
	MaxVelocity = 4.5,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2600,

	sightDistance = 350,

	Category = [[LAND]],
	
	CanCloak = true,
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
		[1]={name  = "weaponintruder",
			--maxAngleDif = 210,
			--mainDir = [[-1 1 1]],
			onlyTargetCategory = [[LAND]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
