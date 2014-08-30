local unitName = "torreta2"

local unitDef = {
	name				= "Torreta Jauria",
	Description			= "Torre defensora",
	objectName			= "torreta2.dae",
	script			= "torreta2.lua",
	buildPic			= "torreta2.png",

	--cost

	buildCostMetal = 500,
	buildCostEnergy = 0,
	buildTime = 5,
	
	--Health

	maxDamage = 23000,
	idleAutoHeal = 60,
	idleTime     = 3,

	--Movement
	
	FootprintX = 5,
	FootprintZ = 5,
	
	maxSlope = 20,

	sightDistance = 500,

	CanAttack = true,
	CanGuard = true,
	CanMove = false,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	MetalMake = 0,

	weapons = {
	[1]={name  = "weapontorreta",
		onlyTargetCategory = [[LAND AIR]],
		},
	[2]={name  = "weapontorreta",
		onlyTargetCategory = [[LAND AIR]],
		},
	[3]={name  = "weapontorreta",
		onlyTargetCategory = [[LAND AIR]],
		},
	},

	Category = [[LAND]],

}

return lowerkeys({ [unitName] = unitDef })
