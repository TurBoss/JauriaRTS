local unitName = "braider"

local unitDef = {
	name = "Raider",
	Description = "Fast raiding vehicle",
	objectName = "raider.dae",
	script = "raider.lua",
	buildPic = "raider.png",
	iconType = "raider",

	--cost

	buildCostMetal = 130,
	buildCostEnergy = 0,
	buildTime = 6.5,

	--Health

	maxDamage = 2340,
	idleAutoHeal = 9,
	idleTime     = 3,

	--Movement

	mass= 1300,
	Acceleration = 8,
	BrakeRate = 3.2,
	FootprintX = 2.5,
	FootprintZ = 2.5,
	MaxSlope = 8,
	MaxVelocity = 7.5,
	MaxWaterDepth = 20,
	MovementClass = "Default2x2",
	TurnRate = 2400,
	
	TurnInPlace = false,
	turnInPlaceSpeedLimit  = 7,
	

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
