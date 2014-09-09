local unitName = "bheik"

local unitDef = {
	name = "Heik",
	Description = "Complex, mobile unit.",
	objectName = "heik.dae",
	script = "heik.lua",
	buildPic = "placeholder.png",
	iconType = "rk2",

	--cost

	buildCostMetal = 85,
	buildCostEnergy = 0,
	buildTime = 4.25,

	--Health

	maxDamage = 820,
	idleAutoHeal = 10,
	idleTime     = 3,

	--Movement

	mass=600,
	Acceleration = 2,
	BrakeRate = 1.5,
	FootprintX = 1.5,
	FootprintZ = 1.5,
	MaxSlope = 12,
	MaxVelocity = 4.9,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 3200,

	sightDistance = 340,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	weapons = {
		[1]={name  = "weaponheik",
			onlyTargetCategory = [[LAND]],
		},
		--[2]={name  = "shieldheik",
		--},
	},
}

return lowerkeys({ [unitName] = unitDef })
