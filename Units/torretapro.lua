local unitName = "torretapro"

local unitDef = {
	name				= "Turret",
	Description			= "Defense Turret.",
	objectName			= "torretapro.dae",
	script			= "torretapro.lua",
	buildPic			= "torretapro.png",
	iconType = "towers",

	--cost

	buildCostMetal = 20000,
	buildCostEnergy = 0,
	buildTime = 0,
	
	reclaimable				=false,
	
	--Health

	maxDamage = 20000,
	idleAutoHeal = 60,
	idleTime     = 3,

	--Movement
	
	FootprintX = 5,
	FootprintZ = 5,
	
	maxSlope = 20,

	sightDistance = 500,

	CanAttack = true,
	CanGuard = false,
	CanMove = false,
	CanPatrol = false,
	CanStop = true,
	LeaveTracks = false,

	MetalMake = 0,

	weapons = {
	[1]={name  = "weapontorretapro",
		onlyTargetCategory = [[LAND AIR]],
		},
	[2]={name  = "weapontorretapro",
		onlyTargetCategory = [[LAND AIR]],
		},
	[3]={name  = "weapontorretapro",
		onlyTargetCategory = [[LAND AIR]],
		},
	},

	Category = [[LAND]],

}

return lowerkeys({ [unitName] = unitDef })
