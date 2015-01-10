local unitName = "mechabot"

local unitDef = {
	name				= "mechabot",
	Description			= "jungler",
	objectName			= "mechabot.dae",
	script			= "mechabot.lua",
	buildPic			= "mechabot1.png",

	--cost

	buildCostMetal = 24000,
	buildCostEnergy = 0,
	buildTime = 150,
	
	--Health

	maxDamage = 10000,
	idleAutoHeal = 0,
	idleTime     = 0,

	--Movement
	
	mass=1500,
	Acceleration = 1,
	BrakeRate = 1,
	FootprintX = 5,
	FootprintZ = 5,
	MaxSlope = 12,
	MaxVelocity = 4,
	MaxWaterDepth = 20,
	MovementClass = "Default5x5",
	TurnRate = 700,
	
	maxSlope = 20,

	sightDistance = 400,

	CanAttack = true,
	CanGuard = true,
	CanMove = false,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	MetalMake = 0,

	weapons = {
		[1]={name  = "weaponmechabot",
			onlyTargetCategory = [[LAND AIR]],
		},
		[2]={name  = "weaponmechabot",
			onlyTargetCategory = [[LAND AIR]],
		},
	},
	sfxtypes = {
		explosiongenerators = {
			"custom:smoke1",
		},
	},
	Category = [[LAND]],

}

return lowerkeys({ [unitName] = unitDef })
