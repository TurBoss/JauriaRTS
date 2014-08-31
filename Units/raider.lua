local unitName = "braider"

local unitDef = {
	name = "Raider",
	Description = "High movility raiding vehicle",
	objectName = "raider.dae",
	script = "raider.lua",
	buildPic = "raider.png",
	iconType = "nm1",

	--cost

	buildCostMetal = 152,
	buildCostEnergy = 0,
	buildTime = 8.4,

	--Health

	maxDamage = 1650,
	idleAutoHeal = 18,
	idleTime     = 3,

	--Movement

	mass= 1300,
	Acceleration = 1.8,
	BrakeRate = 3.2,
	FootprintX = 2.5,
	FootprintZ = 2.5,
	MaxSlope = 8,
	MaxVelocity = 4.7,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2100,

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
